#!/bin/bash

# 自动提交监控脚本 - 每30分钟检查并提交
# 使用notify工具主动告知执行结果
# 路径: /data/workspace/awesome-openclaw/start_30min_monitor.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
SCRIPT_DIR="$PROJECT_DIR"
PID_FILE="$SCRIPT_DIR/.30min_monitor.pid"
LOG_FILE="$SCRIPT_DIR/30min_monitor.log"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 启动30分钟自动提交监控..."
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 项目目录: $PROJECT_DIR"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 日志文件: $LOG_FILE"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] PID文件: $PID_FILE"

# 检查是否已经在运行
if [ -f "$PID_FILE" ]; then
    OLD_PID=$(cat "$PID_FILE")
    if ps -p "$OLD_PID" > /dev/null 2>&1; then
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] 监控进程已经在运行 (PID: $OLD_PID)"
        echo "请先运行 stop_30min_monitor.sh 停止现有进程"
        exit 1
    else
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] 清理过期的PID文件"
        rm -f "$PID_FILE"
    fi
fi

# 启动监控循环
(
    while true; do
        # 执行自动提交脚本
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] 执行定期检查..." >> "$LOG_FILE"
        
        # 调用自动提交脚本
        bash "$SCRIPT_DIR/auto_commit_with_notify.sh" >> "$LOG_FILE" 2>&1
        
        # 提取通知信息并发送
        NOTIFICATION=$(sed -n '/NOTIFICATION_BEGIN/,/NOTIFICATION_END/p' "$LOG_FILE" | grep -v "NOTIFICATION_BEGIN\|NOTIFICATION_END" | tail -n +2 | head -n -1)
        
        if [ -n "$NOTIFICATION" ]; then
            # 使用notify工具发送通知（通过环境变量或直接调用）
            echo "$NOTIFICATION" > /tmp/git_notify_$$.txt
            echo "[$(date '+%Y-%m-%d %H:%M:%S')] 通知已准备，等待AI系统处理" >> "$LOG_FILE"
        fi
        
        # 清理日志文件中旧的NOTIFICATION标记
        sed -i '/NOTIFICATION_BEGIN/,/NOTIFICATION_END/d' "$LOG_FILE"
        
        # 等待30分钟
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] 等待30分钟后进行下一次检查..." >> "$LOG_FILE"
        sleep 1800  # 30分钟 = 1800秒
    done
) &

# 保存PID
echo $! > "$PID_FILE"
MONITOR_PID=$!

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 监控进程已启动 (PID: $MONITOR_PID)"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 每30分钟执行一次git状态检查"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 使用以下命令查看日志: tail -f $LOG_FILE"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 使用以下命令停止监控: bash $SCRIPT_DIR/stop_30min_monitor.sh"
