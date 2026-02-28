#!/bin/bash

# 持续运行监控脚本，每30分钟检查一次git状态
# 路径: /data/workspace/awesome-openclaw/auto_commit_monitor.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
CHECK_SCRIPT="$PROJECT_DIR/check_and_commit.sh"
PID_FILE="$PROJECT_DIR/.auto_commit_monitor.pid"
LOG_FILE="$PROJECT_DIR/auto_commit_monitor.log"

echo "======================================" >> "$LOG_FILE"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 启动自动提交监控" >> "$LOG_FILE"
echo "监控脚本路径: $0" >> "$LOG_FILE"
echo "检查脚本路径: $CHECK_SCRIPT" >> "$LOG_FILE"
echo "======================================" >> "$LOG_FILE"

# 记录进程ID
echo $$ > "$PID_FILE"

# 清理函数
cleanup() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 收到终止信号，正在关闭监控..." >> "$LOG_FILE"
    if [ -f "$PID_FILE" ]; then
        rm "$PID_FILE"
    fi
    exit 0
}

# 捕获终止信号
trap cleanup SIGTERM SIGINT

# 立即执行一次检查
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 执行初始检查..." >> "$LOG_FILE"
bash "$CHECK_SCRIPT"

# 主循环：每30分钟执行一次检查
while true; do
    # 等待30分钟（1800秒）
    sleep 1800
    
    # 执行检查脚本
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 执行定时检查..." >> "$LOG_FILE"
    bash "$CHECK_SCRIPT"
    
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 检查完成，等待下一次..." >> "$LOG_FILE"
done
