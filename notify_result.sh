#!/bin/bash

# 通知脚本 - 记录检查结果
# 路径: /data/workspace/awesome-openclaw/notify_result.sh
# 注意：此脚本记录通知信息到文件，实际的notify功能需要在对话环境中调用

TIMESTAMP="$1"
STATUS="$2"
RESULT="$3"
COMMIT_ID="$4"
COMMIT_MSG="$5"

NOTIFICATION_FILE="/data/workspace/awesome-openclaw/last_notification.txt"

# 创建通知内容
cat > "$NOTIFICATION_FILE" << EOF
🔄 Git自动提交检查结果

✅ **自动提交检查已完成**

**执行时间**: $TIMESTAMP

**检查结果**:
- 工作树状态: $STATUS
- 执行操作: $RESULT
- 提交信息: $COMMIT_MSG
- Git提交: $COMMIT_ID

**自动化状态**:
- 监控进程: 正在运行
- 下次检查: 30分钟后

系统已成功执行定期检查并维护git历史的连续记录。

---
通知生成时间: $(date '+%Y-%m-%d %H:%M:%S')
EOF

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 通知信息已记录到 $NOTIFICATION_FILE"
