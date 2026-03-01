#!/bin/bash

# 包装脚本 - 执行git检查并使用notify工具通知用户
# 路径: /data/workspace/awesome-openclaw/run_check_with_notify.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
CHECK_SCRIPT="$PROJECT_DIR/check_and_commit.sh"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 开始执行git状态检查..."

# 执行检查脚本并捕获输出
OUTPUT=$(bash "$CHECK_SCRIPT" 2>&1)
EXIT_CODE=$?

# 提取通知信息
TIMESTAMP=$(echo "$OUTPUT" | grep "^TIME:" | cut -d' ' -f2-)
STATUS=$(echo "$OUTPUT" | grep "^STATUS:" | cut -d' ' -f2-)
RESULT=$(echo "$OUTPUT" | grep "^RESULT:" | cut -d' ' -f2-)
COMMIT_ID=$(echo "$OUTPUT" | grep "^COMMIT_ID:" | cut -d' ' -f2-)
COMMIT_MSG=$(echo "$OUTPUT" | grep "^COMMIT_MSG:" | cut -d' ' -f2-)

# 如果没有提取到信息，使用默认值
if [ -z "$STATUS" ]; then
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
    STATUS="检查完成"
    RESULT="已执行git状态检查"
    COMMIT_ID="N/A"
    COMMIT_MSG="N/A"
fi

# 构建通知消息
MESSAGE="🔄 **Git自动提交检查结果**

✅ **检查已完成**

**执行时间**: $TIMESTAMP

**检查结果**:
- 状态: $STATUS
- 操作: $RESULT
- Git提交: $COMMIT_ID
- 提交信息: $COMMIT_MSG

**项目**: awesome-openclaw
**监控状态**: 每30分钟自动检查
**下次检查**: 30分钟后

---
此通知由自动提交系统生成"

# 读取通知文件内容（如果有）
NOTIFICATION_FILE="$PROJECT_DIR/last_notification.txt"
if [ -f "$NOTIFICATION_FILE" ]; then
    MESSAGE=$(cat "$NOTIFICATION_FILE")
fi

# 输出结果（用于日志）
echo "$OUTPUT"
echo ""
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 检查执行完成，退出码: $EXIT_CODE"

# 输出JSON格式的通知供系统捕获
echo "{\"action\":\"notify\",\"title\":\"🔄 Git自动提交检查完成\",\"message\":\"$MESSAGE\",\"exit_code\":$EXIT_CODE}"
