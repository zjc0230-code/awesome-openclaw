#!/bin/bash

# 自动提交监控管理脚本
# 用法: ./manage_auto_commit.sh {start|stop|restart|status}
# 路径: /data/workspace/awesome-openclaw/manage_auto_commit.sh

PROJECT_DIR="/data/workspace/awesome-openclaw"
MONITOR_SCRIPT="$PROJECT_DIR/auto_commit_monitor.sh"
PID_FILE="$PROJECT_DIR/.auto_commit_monitor.pid"
LOG_FILE="$PROJECT_DIR/auto_commit_monitor.log"

start() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 启动自动提交监控..."
    
    # 检查是否已经在运行
    if [ -f "$PID_FILE" ]; then
        PID=$(cat "$PID_FILE")
        if ps -p "$PID" > /dev/null 2>&1; then
            echo "⚠️  监控已经在运行 (PID: $PID)"
            return 1
        else
            echo "清理旧的PID文件..."
            rm "$PID_FILE"
        fi
    fi
    
    # 启动监控
    cd "$PROJECT_DIR" || exit 1
    nohup bash "$MONITOR_SCRIPT" > monitor_output.log 2>&1 &
    sleep 2
    
    # 检查是否启动成功
    if [ -f "$PID_FILE" ]; then
        NEW_PID=$(cat "$PID_FILE")
        echo "✅ 监控已启动 (PID: $NEW_PID)"
        echo "日志文件: $LOG_FILE"
        return 0
    else
        echo "❌ 监控启动失败"
        return 1
    fi
}

stop() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 停止自动提交监控..."
    
    if [ -f "$PID_FILE" ]; then
        PID=$(cat "$PID_FILE")
        
        if ps -p "$PID" > /dev/null 2>&1; then
            echo "找到监控进程 PID: $PID，正在停止..."
            kill "$PID"
            sleep 2
            
            if ps -p "$PID" > /dev/null 2>&1; then
                echo "进程未响应，强制停止..."
                kill -9 "$PID"
            fi
            
            echo "✅ 监控进程已停止"
        else
            echo "⚠️  进程 $PID 不存在"
        fi
        
        rm "$PID_FILE"
        echo "✅ 已清理PID文件"
    else
        echo "⚠️  未找到PID文件，监控可能未运行"
    fi
}

restart() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 重启自动提交监控..."
    stop
    sleep 2
    start
}

status() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 监控状态："
    echo "--------------------------------"
    
    if [ -f "$PID_FILE" ]; then
        PID=$(cat "$PID_FILE")
        if ps -p "$PID" > /dev/null 2>&1; then
            echo "✅ 状态: 运行中"
            echo "📍 PID: $PID"
            echo "📄 PID文件: $PID_FILE"
            echo "📝 日志文件: $LOG_FILE"
            
            # 显示最近5条日志
            if [ -f "$LOG_FILE" ]; then
                echo ""
                echo "最近5条日志："
                echo "--------------------------------"
                tail -5 "$LOG_FILE"
            fi
            
            return 0
        else
            echo "❌ 状态: 进程不存在 (PID文件存在但进程已停止)"
            echo "📍 记录的PID: $PID"
            echo "💡 建议: 运行 '$0 start' 重新启动"
            return 1
        fi
    else
        echo "❌ 状态: 未运行"
        echo "💡 建议: 运行 '$0 start' 启动监控"
        return 1
    fi
}

case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    restart)
        restart
        ;;
    status)
        status
        ;;
    *)
        echo "用法: $0 {start|stop|restart|status}"
        echo ""
        echo "命令说明:"
        echo "  start   - 启动自动提交监控"
        echo "  stop    - 停止自动提交监控"
        echo "  restart - 重启自动提交监控"
        echo "  status  - 查看监控状态"
        exit 1
        ;;
esac
