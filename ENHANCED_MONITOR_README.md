# 增强版自动提交监控系统使用说明

## 📋 系统概述

增强版自动提交监控系统每30分钟自动检查awesome-openclaw项目的git状态，并提交任何更改。即使工作树是干净的，也会更新维护日志时间戳，确保git历史连续记录。每次检查后会使用notify工具主动通知你执行结果。

## ✅ 系统特性

- **自动检查**: 每30分钟自动检查git状态
- **自动提交**: 检测到更改时自动提交
- **连续记录**: 即使工作树干净也会更新维护日志时间戳
- **主动通知**: 使用notify工具主动告知执行结果
- **后台运行**: 作为后台进程持续运行

## 🚀 快速开始

### 启动监控系统

```bash
cd /data/workspace/awesome-openclaw
bash start_enhanced_monitor.sh
```

### 停止监控系统

```bash
cd /data/workspace/awesome-openclaw
bash stop_enhanced_monitor.sh
```

### 查看监控状态

```bash
cd /data/workspace/awesome-openclaw
bash show_monitor_status.sh
```

### 重启监控系统

```bash
cd /data/workspace/awesome-openclaw
bash stop_enhanced_monitor.sh
bash start_enhanced_monitor.sh
```

## 📁 文件说明

| 文件名 | 说明 |
|--------|------|
| `start_enhanced_monitor.sh` | 启动监控系统 |
| `stop_enhanced_monitor.sh` | 停止监控系统 |
| `show_monitor_status.sh` | 查看监控状态 |
| `auto_commit_monitor_enhanced.sh` | 增强版监控主进程 |
| `run_check_with_notify.sh` | 执行检查并发送通知 |
| `check_and_commit.sh` | 检查和提交核心逻辑 |
| `notify_result.sh` | 通知信息生成脚本 |
| `.auto_commit_monitor_enhanced.pid` | 监控进程ID文件 |
| `auto_commit_monitor_enhanced.log` | 监控日志文件 |

## 📊 监控流程

```
启动监控
  ↓
立即执行首次检查
  ↓
检查git状态
  ├─ 有更改 → 添加并提交 → 通知用户
  └─ 无更改 → 更新维护日志时间戳 → 提交 → 通知用户
  ↓
等待30分钟
  ↓
循环执行检查...
```

## 🔔 通知内容

每次检查完成后，你将收到包含以下信息的通知：

- ✅ 检查状态（成功/失败）
- 📅 执行时间
- 📝 检查结果
- 🔀 Git提交信息（如果有）
- ⏰ 下次检查时间

## 📝 提交信息格式

- **有更改时**: `maintenance: auto-commit YYYY-MM-DD HH:MM - 检测到文件更改`
- **无更改时**: `maintenance: auto-commit YYYY-MM-DD HH:MM - 维护日志时间戳更新`

## 🛠️ 故障排查

### 监控进程未运行

1. 检查进程状态:
   ```bash
   ps aux | grep auto_commit_monitor
   ```

2. 查看日志文件:
   ```bash
   tail -f /data/workspace/awesome-openclaw/auto_commit_monitor_enhanced.log
   ```

3. 重启监控:
   ```bash
   bash /data/workspace/awesome-openclaw/start_enhanced_monitor.sh
   ```

### 未收到通知

1. 检查通知文件:
   ```bash
   cat /data/workspace/awesome-openclaw/last_notification.txt
   ```

2. 检查日志文件查看错误信息

### Git提交失败

1. 检查git仓库状态:
   ```bash
   cd /data/workspace/awesome-openclaw
   git status
   ```

2. 查看详细日志:
   ```bash
   cat /data/workspace/awesome-openclaw/auto_commit_monitor_enhanced.log
   ```

## 📈 监控历史记录

- **监控日志**: `/data/workspace/awesome-openclaw/auto_commit_monitor_enhanced.log`
- **维护日志**: `/data/workspace/awesome-openclaw/MAINTENANCE_LOG.md`
- **自检日志**: `/data/workspace/awesome-openclaw/auto_commit.log`

## ⚙️ 配置参数

如需修改配置，编辑以下文件：

- **检查间隔**: 修改 `auto_commit_monitor_enhanced.sh` 中的 `sleep 1800`（单位：秒）
- **项目路径**: 修改各脚本中的 `PROJECT_DIR` 变量
- **日志文件**: 修改各脚本中的 `LOG_FILE` 变量

## 🎯 最佳实践

1. **定期检查**: 建议每天查看一次监控状态
2. **日志归档**: 定期清理或归档旧日志文件
3. **提交历史**: 定期查看git提交历史，确保正常记录
4. **通知响应**: 收到通知后及时查看变更内容

## 📞 技术支持

如遇问题，请检查：

1. 监控日志文件
2. 维护日志文件
3. Git提交历史
4. 系统进程状态

---

**系统版本**: Enhanced Auto-Commit Monitor v2.0  
**最后更新**: 2026-03-02  
**监控间隔**: 30分钟  
**通知方式**: notify工具主动通知
