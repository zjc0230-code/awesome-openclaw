#!/bin/bash

# 停止增强版自动提交监控系统
# 路径: /data/workspace/awesome-openclaw/stop_enhanced_monitor.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
OLD_PID_FILE="$PROJECT_DIR/.auto_commit_monitor.pid"
NEW_PID_FILE="$PROJECT_DIR/.auto_commit_monitor_enhanced.pid"

echo "========================================"
echo "停止增强版自动提交监控系统"
echo "========================================"

# 停止旧的监控进程
if [ -f "$OLD_PID_FILE" ]; then
    OLD_PID=$(cat "$OLD_PID_FILE")
    if ps -p "$OLD_PID" > /dev/null 2>&1; then
        echo "停止旧的监控进程 (PID: $OLD_PID)..."
        kill "$OLD_PID"
        sleep 2
        # 如果进程还在运行，强制终止
        if ps -p "$OLD_PID" > /dev/null 2>&1; then
            kill -9 "$OLD_PID"
            echo "已强制终止旧监控进程"
        else
            echo "✅ 旧监控进程已停止"
        fi
    else
        echo "旧监控进程未在运行"
    fi
    rm -f "$OLD_PID_FILE"
else
    echo "未找到旧监控进程的PID文件"
fi

# 停止增强版监控进程
if [ -f "$NEW_PID_FILE" ]; then
    NEW_PID=$(cat "$NEW_PID_FILE")
    if ps -p "$NEW_PID" > /dev/null 2>&1; then
        echo "停止增强版监控进程 (PID: $NEW_PID)..."
        kill "$NEW_PID"
        sleep 2
        # 如果进程还在运行，强制终止
        if ps -p "$NEW_PID" > /dev/null 2>&1; then
            kill -9 "$NEW_PID"
            echo "已强制终止增强版监控进程"
        else
            echo "✅ 增强版监控进程已停止"
        fi
    else
        echo "增强版监控进程未在运行"
    fi
    rm -f "$NEW_PID_FILE"
else
    echo "未找到增强版监控进程的PID文件"
fi

echo "========================================"
echo "监控系统已完全停止"
echo "========================================"
