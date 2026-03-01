#!/bin/bash

# 增强版监控系统状态查看脚本
# 路径: /data/workspace/awesome-openclaw/show_monitor_status.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
OLD_PID_FILE="$PROJECT_DIR/.auto_commit_monitor.pid"
NEW_PID_FILE="$PROJECT_DIR/.auto_commit_monitor_enhanced.pid"
OLD_LOG="$PROJECT_DIR/auto_commit_monitor.log"
NEW_LOG="$PROJECT_DIR/auto_commit_monitor_enhanced.log"

echo "========================================"
echo "增强版自动提交监控系统状态"
echo "========================================"
echo ""

# 检查旧监控进程
if [ -f "$OLD_PID_FILE" ]; then
    OLD_PID=$(cat "$OLD_PID_FILE")
    if ps -p "$OLD_PID" > /dev/null 2>&1; then
        echo "🔹 旧监控进程状态: ✅ 正在运行 (PID: $OLD_PID)"
    else
        echo "🔹 旧监控进程状态: ❌ 已停止 (PID文件存在但进程不存在)"
    fi
else
    echo "🔹 旧监控进程状态: ❌ 未运行 (无PID文件)"
fi

# 检查增强版监控进程
if [ -f "$NEW_PID_FILE" ]; then
    NEW_PID=$(cat "$NEW_PID_FILE")
    if ps -p "$NEW_PID" > /dev/null 2>&1; then
        echo "🔹 增强版监控进程状态: ✅ 正在运行 (PID: $NEW_PID)"
    else
        echo "🔹 增强版监控进程状态: ❌ 已停止 (PID文件存在但进程不存在)"
    fi
else
    echo "🔹 增强版监控进程状态: ❌ 未运行 (无PID文件)"
fi

echo ""
echo "========================================"
echo "项目Git状态"
echo "========================================"
cd "$PROJECT_DIR" || exit 1
git status --short

echo ""
echo "========================================"
echo "最近的Git提交"
echo "========================================"
git log --oneline -5

echo ""
echo "========================================"
echo "最近的通知记录"
echo "========================================"
if [ -f "$PROJECT_DIR/last_notification.txt" ]; then
    cat "$PROJECT_DIR/last_notification.txt"
else
    echo "暂无通知记录"
fi

echo ""
echo "========================================"
echo "最近的自检日志"
echo "========================================"
if [ -f "$NEW_LOG" ]; then
    tail -20 "$NEW_LOG"
elif [ -f "$OLD_LOG" ]; then
    tail -20 "$OLD_LOG"
else
    echo "暂无日志记录"
fi

echo ""
echo "========================================"
