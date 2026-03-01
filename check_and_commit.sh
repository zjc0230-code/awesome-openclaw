#!/bin/bash

# 每30分钟检查并提交更改的脚本（带通知功能）
# 路径: /data/workspace/awesome-openclaw/check_and_commit.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
LOG_FILE="$PROJECT_DIR/MAINTENANCE_LOG.md"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
COMMIT_PREFIX="maintenance: auto-commit $(date '+%Y-%m-%d %H:%M')"
NOTIFY_SCRIPT="$PROJECT_DIR/notify_result.sh"

echo "[$TIMESTAMP] 开始检查git状态..."

cd "$PROJECT_DIR" || exit 1

# 检查git状态
GIT_STATUS=$(git status --porcelain)
COMMIT_ID=""
STATUS=""
RESULT=""
COMMIT_MSG=""

if [ -n "$GIT_STATUS" ]; then
    echo "[$TIMESTAMP] 检测到未提交的更改："
    echo "$GIT_STATUS"
    
    # 添加所有更改
    git add .
    
    # 提交更改
    COMMIT_MSG="$COMMIT_PREFIX - 检测到文件更改"
    git commit -m "$COMMIT_MSG"
    COMMIT_ID=$(git rev-parse --short HEAD)
    
    echo "[$TIMESTAMP] 已提交更改"
    STATUS="发现更改并提交 ✅"
    RESULT="检测到未提交的更改并已提交"
else
    echo "[$TIMESTAMP] 工作树是干净的"
    STATUS="工作树干净，已更新维护日志 ✅"
    RESULT="工作树干净，更新维护日志时间戳"
    
    # 更新MAINTENANCE_LOG.md的时间戳
    TIMESTAMP_LINE="## $TIMESTAMP - 定期检查：维护日志时间戳更新 🕐"
    
    # 在文件开头添加时间戳记录
    echo "" >> "$LOG_FILE"
    echo "---" >> "$LOG_FILE"
    echo "$TIMESTAMP_LINE" >> "$LOG_FILE"
    echo "" >> "$LOG_FILE"
    echo "### 📊 本次检查概览" >> "$LOG_FILE"
    echo "" >> "$LOG_FILE"
    echo "**检查类型**: 定期维护日志更新" >> "$LOG_FILE"
    echo "**检查时间**: $TIMESTAMP" >> "$LOG_FILE"
    echo "**状态**: ✅ 工作树干净" >> "$LOG_FILE"
    echo "**操作**: 更新维护日志时间戳以确保git历史连续记录" >> "$LOG_FILE"
    echo "" >> "$LOG_FILE"
    echo "---" >> "$LOG_FILE"
    echo "" >> "$LOG_FILE"
    
    # 提交时间戳更新
    git add "$LOG_FILE"
    COMMIT_MSG="$COMMIT_PREFIX - 维护日志时间戳更新"
    git commit -m "$COMMIT_MSG"
    COMMIT_ID=$(git rev-parse --short HEAD)
    
    echo "[$TIMESTAMP] 已更新维护日志时间戳并提交"
fi

# 记录本次操作
echo "[$TIMESTAMP] 定期检查完成 - $RESULT" >> "$PROJECT_DIR/auto_commit.log"

echo "[$TIMESTAMP] 脚本执行完成"

# 发送通知
if [ -f "$NOTIFY_SCRIPT" ]; then
    bash "$NOTIFY_SCRIPT" "$TIMESTAMP" "$STATUS" "$RESULT" "$COMMIT_ID" "$COMMIT_MSG"
fi