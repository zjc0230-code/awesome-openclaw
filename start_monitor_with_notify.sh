#!/bin/bash

# 启动带notify通知的30分钟自动提交监控
# 路径: /data/workspace/awesome-openclaw/start_monitor_with_notify.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
SCRIPT_DIR="$PROJECT_DIR"
MONITOR_SCRIPT="$SCRIPT_DIR/auto_commit_monitor_with_notify.sh"
PID_FILE="$SCRIPT_DIR/.auto_commit_monitor_with_notify.pid"
OLD_PID_FILE="$SCRIPT_DIR/.30min_monitor.pid"
OLD_ENHANCED_PID="$SCRIPT_DIR/.auto_commit_monitor_enhanced.pid"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 启动30分钟自动提交监控（带notify通知）..."

# 停止旧版本的监控进程
for pidfile in "$OLD_PID_FILE" "$OLD_ENHANCED_PID"; do
    if [ -f "$pidfile" ]; then
        old_pid=$(cat "$pidfile")
        if ps -p "$old_pid" > /dev/null 2>&1; then
            echo "[$(date '+%Y-%m-%d %H:%M:%S')] 停止旧版本监控进程 (PID: $old_pid)..."
            kill "$old_pid" 2>/dev/null
            sleep 1
            if ps -p "$old_pid" > /dev/null 2>&1; then
                kill -9 "$old_pid" 2>/dev/null
            fi
            rm -f "$pidfile"
        else
            rm -f "$pidfile"
        fi
    fi
done

# 检查新版本是否已经在运行
if [ -f "$PID_FILE" ]; then
    NEW_PID=$(cat "$PID_FILE")
    if ps -p "$NEW_PID" > /dev/null 2>&1; then
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] 监控进程已经在运行 (PID: $NEW_PID)"
        exit 1
    else
        rm -f "$PID_FILE"
    fi
fi

# 启动新的监控进程
nohup bash "$MONITOR_SCRIPT" > /dev/null 2>&1 &

# 保存PID
echo $! > "$PID_FILE"
MONITOR_PID=$!

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 监控进程已启动 (PID: $MONITOR_PID)"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 每30分钟执行一次git状态检查"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 使用以下命令查看日志: tail -f $PROJECT_DIR/auto_commit_monitor_with_notify.log"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 使用以下命令停止监控: bash $SCRIPT_DIR/stop_monitor_with_notify.sh"
