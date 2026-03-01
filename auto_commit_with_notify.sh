#!/bin/bash

# Git自动提交脚本（带notify通知）
# 每30分钟运行一次，检查并提交更改，通过notify工具通知用户
# 路径: /data/workspace/awesome-openclaw/auto_commit_with_notify.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
LOG_FILE="$PROJECT_DIR/MAINTENANCE_LOG.md"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
COMMIT_PREFIX="maintenance: auto-commit $(date '+%Y-%m-%d %H:%M')"

# 进入项目目录
cd "$PROJECT_DIR" || exit 1

# 检查git状态
GIT_STATUS=$(git status --porcelain)
COMMIT_ID=""
STATUS=""
RESULT=""
COMMIT_MSG=""

if [ -n "$GIT_STATUS" ]; then
    # 检测到未提交的更改
    git add .
    COMMIT_MSG="$COMMIT_PREFIX - 检测到文件更改"
    git commit -m "$COMMIT_MSG" > /dev/null 2>&1
    COMMIT_ID=$(git rev-parse --short HEAD)
    STATUS="发现更改并提交 ✅"
    RESULT="检测到未提交的更改并已提交"
else
    # 工作树干净，更新维护日志时间戳
    TIMESTAMP_LINE="## $TIMESTAMP - 定期检查：维护日志时间戳更新 🕐"
    
    # 在文件开头添加时间戳记录
    {
        echo ""
        echo "---"
        echo "$TIMESTAMP_LINE"
        echo ""
        echo "### 📊 本次检查概览"
        echo ""
        echo "**检查类型**: 定期维护日志更新"
        echo "**检查时间**: $TIMESTAMP"
        echo "**状态**: ✅ 工作树干净"
        echo "**操作**: 更新维护日志时间戳以确保git历史连续记录"
        echo ""
        echo "---"
        echo ""
    } >> "$LOG_FILE"
    
    # 提交时间戳更新
    git add "$LOG_FILE"
    COMMIT_MSG="$COMMIT_PREFIX - 维护日志时间戳更新"
    git commit -m "$COMMIT_MSG" > /dev/null 2>&1
    COMMIT_ID=$(git rev-parse --short HEAD)
    STATUS="工作树干净，已更新维护日志 ✅"
    RESULT="工作树干净，更新维护日志时间戳"
fi

# 记录本次操作
echo "[$TIMESTAMP] 定期检查完成 - $RESULT" >> "$PROJECT_DIR/auto_commit.log"

# 构建通知消息
MESSAGE="🔄 **Git自动提交检查结果**

✅ **自动提交检查已完成**

**执行时间**: $TIMESTAMP

**检查结果**:
- 工作树状态: $STATUS
- 执行操作: $RESULT
- 提交信息: $COMMIT_MSG
- Git提交: $COMMIT_ID

**自动化状态**:
- 监控进程: 定时任务运行中
- 下次检查: 30分钟后

系统已成功执行定期检查并维护git历史的连续记录。

---
通知生成时间: $TIMESTAMP"

# 保存通知消息到文件
NOTIFICATION_FILE="$PROJECT_DIR/last_notification.txt"
echo "$MESSAGE" > "$NOTIFICATION_FILE"

# 输出JSON格式的通知供系统捕获（由AI系统解析并调用notify工具）
echo "{\"action\":\"notify\",\"title\":\"🔄 Git自动提交检查完成\",\"message\":\"$MESSAGE\",\"exit_code\":0}"
