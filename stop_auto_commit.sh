#!/bin/bash

# 停止自动提交监控脚本
# 路径: /data/workspace/awesome-openclaw/stop_auto_commit.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
PID_FILE="$PROJECT_DIR/.auto_commit_monitor.pid"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 停止自动提交监控..."

if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    
    # 检查进程是否还在运行
    if ps -p "$PID" > /dev/null 2>&1; then
        echo "找到监控进程 PID: $PID，正在停止..."
        kill "$PID"
        sleep 2
        
        # 如果进程还在运行，强制停止
        if ps -p "$PID" > /dev/null 2>&1; then
            echo "进程未响应，强制停止..."
            kill -9 "$PID"
        fi
        
        echo "✅ 监控进程已停止"
    else
        echo "⚠️  进程 $PID 不存在"
    fi
    
    # 删除PID文件
    rm "$PID_FILE"
    echo "✅ 已清理PID文件"
else
    echo "⚠️  未找到PID文件，监控可能未运行"
fi

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 停止完成"
