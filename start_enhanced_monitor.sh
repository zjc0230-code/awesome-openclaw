#!/bin/bash

# 启动增强版自动提交监控系统
# 路径: /data/workspace/awesome-openclaw/start_enhanced_monitor.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
OLD_PID_FILE="$PROJECT_DIR/.auto_commit_monitor.pid"
NEW_PID_FILE="$PROJECT_DIR/.auto_commit_monitor_enhanced.pid"
NEW_MONITOR_SCRIPT="$PROJECT_DIR/auto_commit_monitor_enhanced.sh"

echo "========================================"
echo "启动增强版自动提交监控系统"
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
        fi
    fi
    rm -f "$OLD_PID_FILE"
    echo "✅ 旧的监控进程已停止"
fi

# 停止旧的增强版监控进程（如果存在）
if [ -f "$NEW_PID_FILE" ]; then
    NEW_PID=$(cat "$NEW_PID_FILE")
    if ps -p "$NEW_PID" > /dev/null 2>&1; then
        echo "停止旧的增强版监控进程 (PID: $NEW_PID)..."
        kill "$NEW_PID"
        sleep 2
        if ps -p "$NEW_PID" > /dev/null 2>&1; then
            kill -9 "$NEW_PID"
        fi
    fi
    rm -f "$NEW_PID_FILE"
    echo "✅ 旧的增强版监控进程已停止"
fi

# 确保脚本有执行权限
chmod +x "$NEW_MONITOR_SCRIPT"

# 启动新的增强版监控进程（后台运行）
echo "启动增强版监控进程..."
nohup bash "$NEW_MONITOR_SCRIPT" > /dev/null 2>&1 &

# 等待进程启动
sleep 2

# 检查进程是否成功启动
if [ -f "$NEW_PID_FILE" ]; then
    NEW_PID=$(cat "$NEW_PID_FILE")
    if ps -p "$NEW_PID" > /dev/null 2>&1; then
        echo "✅ 增强版监控进程已成功启动 (PID: $NEW_PID)"
        echo ""
        echo "监控配置："
        echo "- 项目路径: $PROJECT_DIR"
        echo "- 检查间隔: 每30分钟"
        echo "- 通知方式: 使用notify工具主动通知"
        echo "- 日志文件: $PROJECT_DIR/auto_commit_monitor_enhanced.log"
        echo ""
        echo "监控进程将在后台持续运行，每次检查后会通过notify工具通知你结果。"
        echo "========================================"
        
        # 立即执行一次检查测试
        echo ""
        echo "立即执行第一次检查测试..."
        bash "$PROJECT_DIR/run_check_with_notify.sh"
    else
        echo "❌ 监控进程启动失败"
        exit 1
    fi
else
    echo "❌ PID文件未创建，进程可能启动失败"
    exit 1
fi
