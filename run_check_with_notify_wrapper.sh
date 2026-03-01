#!/bin/bash

# 包装脚本：执行自动提交并使用notify工具通知用户
# 路径: /data/workspace/awesome-openclaw/run_check_with_notify_wrapper.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
CHECK_SCRIPT="$PROJECT_DIR/auto_commit_with_notify.sh"
NOTIFICATION_FILE="$PROJECT_DIR/last_notification.txt"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 开始执行git状态检查（包装器）..."

# 执行检查脚本
OUTPUT=$(bash "$CHECK_SCRIPT" 2>&1)
EXIT_CODE=$?

# 从输出中提取JSON通知
NOTIFICATION_JSON=$(echo "$OUTPUT" | grep -A 1 'action.*notify' | tail -1)

# 检查通知文件是否存在
if [ -f "$NOTIFICATION_FILE" ]; then
    MESSAGE=$(cat "$NOTIFICATION_FILE")
    
    # 这里应该调用notify工具，但由于我们在脚本环境中运行
    # 只是将消息输出到标准输出，由AI系统捕获并调用notify工具
    echo "=== 通知消息 ==="
    echo "$MESSAGE"
    echo "=== 通知结束 ==="
    
    # 同时输出JSON格式供系统解析
    if [ -n "$NOTIFICATION_JSON" ]; then
        echo "JSON通知: $NOTIFICATION_JSON"
    fi
fi

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 检查执行完成，退出码: $EXIT_CODE"

# 将通知消息保存到一个特殊标记的文件中，方便外部系统读取
echo "$MESSAGE" > "$PROJECT_DIR/.pending_notification.txt"
echo "$NOTIFICATION_JSON" > "$PROJECT_DIR/.pending_notification.json"
