#!/bin/bash

# 停止带notify通知的30分钟自动提交监控
# 路径: /data/workspace/awesome-openclaw/stop_monitor_with_notify.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
PID_FILE="$PROJECT_DIR/.auto_commit_monitor_with_notify.pid"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 停止30分钟自动提交监控..."

# 检查PID文件是否存在
if [ ! -f "$PID_FILE" ]; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 未找到监控进程PID文件"
    exit 0
fi

# 读取PID
PID=$(cat "$PID_FILE")

# 检查进程是否存在
if ! ps -p "$PID" > /dev/null 2>&1; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 监控进程不存在 (PID: $PID)"
    rm -f "$PID_FILE"
    exit 0
fi

# 停止进程
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 停止监控进程 (PID: $PID)..."
kill "$PID"

# 等待进程结束
for i in {1..10}; do
    if ! ps -p "$PID" > /dev/null 2>&1; then
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] 监控进程已成功停止"
        rm -f "$PID_FILE"
        exit 0
    fi
    sleep 1
done

# 如果进程仍未停止，强制结束
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 强制停止监控进程..."
kill -9 "$PID"
rm -f "$PID_FILE"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 监控进程已被强制停止"
