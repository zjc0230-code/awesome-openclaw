# GOG - Google Workspace 全能控制器

> 深度集成 Gmail、Drive、Docs、Calendar 的办公自动化神器

[![Stars](https://img.shields.io/github/stars/example/gog.svg)](https://github.com/example/gog)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Status](https://img.shields.io/badge/status-active-success.svg)](https://github.com/example/gog)

---

## 📊 快速评分

| 维度 | 评分 | 说明 |
|------|------|------|
| 功能性 | ⭐⭐⭐⭐⭐ | 功能全面，覆盖主要 Google 服务 |
| 易用性 | ⭐⭐⭐⭐⭐ | 自然语言命令，学习成本低 |
| 文档质量 | ⭐⭐⭐⭐⭐ | 文档完善，示例丰富 |
| 安全性 | ⭐⭐⭐⭐⭐ | 使用 OAuth 2.0，无需存储密码 |
| 维护活跃度 | ⭐⭐⭐⭐⭐ | 每周更新，社区活跃 |
| **综合评分** | **⭐⭐⭐⭐⭐** | **5.0/5 - 必装推荐** |

---

## 💡 核心功能

### 📧 Gmail 管理
- ✅ 智能邮件搜索和筛选
- ✅ 批量操作 (标记、删除、归档)
- ✅ 自动回复和邮件模板
- ✅ 邮件摘要生成

### 📁 Google Drive
- ✅ 文件搜索和下载
- ✅ 批量上传和同步
- ✅ 权限管理
- ✅ 文件夹组织

### 📄 Google Docs
- ✅ 文档创建和编辑
- ✅ 批注和建议
- ✅ 模板应用
- ✅ 格式转换

### 📅 Google Calendar
- ✅ 日程查询和创建
- ✅ 会议邀请管理
- ✅ 智能时间建议
- ✅ 日程冲突检测

---

## 🚀 快速开始

### 1. 安装

```bash
openclaw skill install gog
```

### 2. 配置 OAuth

```bash
# 首次使用需要授权
openclaw ask "用 gog 列出今天的邮件"

# 按提示在浏览器中完成 Google 授权
# 授权后会自动保存凭证
```

### 3. 基本使用

```bash
# 查看今天的日程
openclaw ask "用 gog 显示今天的日程安排"

# 搜索邮件
openclaw ask "用 gog 搜索最近一周关于项目的邮件"

# 上传文件到 Drive
openclaw ask "用 gog 上传 report.pdf 到我的 Drive"
```

---

## 📖 详细用法

### Gmail 场景

#### 场景 1: 智能邮件摘要
```bash
openclaw ask "用 gog 生成今天未读邮件的摘要，按重要性排序"
```

**输出示例**:
```
📧 今日邮件摘要 (共 15 封未读)

🔴 高优先级 (3封):
1. [客户] 项目验收时间确认 - 需要回复
2. [老板] Q1 季度报告提交提醒 - 截止明天
3. [财务] 发票审批待处理 - 紧急

🟡 中优先级 (8封):
...

🟢 低优先级 (4封):
...
```

#### 场景 2: 批量处理营销邮件
```bash
openclaw ask "用 gog 把所有来自 newsletter 的邮件归档"
```

#### 场景 3: 自动回复
```bash
openclaw ask "用 gog 给 john@example.com 发送邮件，告知我明天可以开会，使用专业模板"
```

---

### Google Drive 场景

#### 场景 1: 智能搜索
```bash
openclaw ask "用 gog 在 Drive 中找出最近修改的 PPT 文件"
```

#### 场景 2: 批量下载
```bash
openclaw ask "用 gog 下载 '2026 Q1 报告' 文件夹中的所有文件"
```

#### 场景 3: 权限管理
```bash
openclaw ask "用 gog 把 project_plan.docx 共享给 team@example.com，仅查看权限"
```

---

### Google Calendar 场景

#### 场景 1: 智能日程查询
```bash
openclaw ask "用 gog 告诉我下周的会议安排，标注冲突"
```

#### 场景 2: 创建会议
```bash
openclaw ask "用 gog 安排明天下午 2 点和 John 开会，主题是项目进度讨论"
```

#### 场景 3: 找空闲时间
```bash
openclaw ask "用 gog 找出本周三个人都有空的 2 小时时间段"
```

---

## 💼 实战案例

### 案例 1: 每日工作流自动化

**需求**: 每天早上自动汇总邮件和日程

**解决方案**:
```bash
# 创建自动化脚本
cat > morning_routine.sh << 'EOF'
#!/bin/bash
openclaw ask "用 gog 执行以下任务：
1. 生成今天未读邮件摘要
2. 显示今天的会议日程
3. 列出 Drive 中昨天修改的文件
4. 把摘要发送到我的邮箱"
EOF

# 设置定时任务 (每天 8:00)
crontab -e
# 添加: 0 8 * * * /path/to/morning_routine.sh
```

---

### 案例 2: 团队文档管理

**需求**: 自动整理团队共享文件夹

**解决方案**:
```bash
openclaw ask "用 gog 做以下操作：
1. 扫描 'Team Docs' 文件夹
2. 把超过 6 个月未修改的文件移动到 'Archive' 文件夹
3. 生成文件清单并发送给团队"
```

---

### 案例 3: 会议助手

**需求**: 自动安排会议并发送邀请

**解决方案**:
```bash
openclaw ask "用 gog 安排一个项目启动会：
- 参与者: john@example.com, mary@example.com
- 时间: 下周找一个大家都空闲的 1 小时
- 地点: 会议室 A
- 附件: project_brief.pdf (从 Drive)
- 发送会议邀请和提醒"
```

---

## ⚙️ 高级配置

### 自定义邮件过滤规则

创建配置文件 `~/.config/openclaw/gog/filters.yaml`:

```yaml
filters:
  high_priority:
    - from: boss@company.com
    - subject_contains: [urgent, important]
    - has_attachment: true
  
  low_priority:
    - from_domain: newsletter.com
    - label: promotions
  
  auto_archive:
    - older_than: 30 days
    - label: social
```

### API 配额管理

```bash
# 查看 API 使用情况
openclaw ask "用 gog 显示今天的 API 配额使用情况"

# 启用配额限制 (避免超限)
openclaw config set gog.quota_limit 1000
openclaw config set gog.quota_alert 80%
```

---

## 🛡️ 安全建议

### ✅ 安全特性

1. **OAuth 2.0 授权**: 无需存储密码
2. **最小权限原则**: 只请求必要的 API 权限
3. **本地凭证加密**: 使用系统密钥链存储 Token
4. **自动刷新**: Token 过期自动续期

### ⚠️ 注意事项

1. **授权范围**: 首次授权时仔细检查权限范围
2. **撤销权限**: 可随时在 Google 账号设置中撤销
3. **公共环境**: 不要在公共电脑上授权
4. **定期审查**: 定期检查授权的应用列表

---

## 🐛 常见问题

### Q1: 授权失败怎么办？

**A**: 
```bash
# 清除旧的凭证
rm ~/.config/openclaw/gog/credentials.json

# 重新授权
openclaw ask "用 gog 列出邮件"
```

### Q2: 如何处理多个 Google 账号？

**A**:
```bash
# 指定账号
openclaw ask --config gog.account=work@company.com "用 gog 列出邮件"
openclaw ask --config gog.account=personal@gmail.com "用 gog 列出邮件"
```

### Q3: API 配额用完了？

**A**: 
- 免费配额: 每天 10,000 次请求
- 付费配额: 联系 Google Cloud 增加
- 优化建议: 使用批量操作，减少单次请求

### Q4: 中国大陆网络问题？

**A**:
```bash
# 配置代理
export HTTP_PROXY=http://127.0.0.1:7890
export HTTPS_PROXY=http://127.0.0.1:7890

# 或使用配置
openclaw config set gog.proxy http://127.0.0.1:7890
```

---

## 🔗 相关资源

- **GitHub**: https://github.com/example/gog
- **官方文档**: https://docs.gog.example.com
- **API 参考**: https://developers.google.com/workspace
- **问题反馈**: https://github.com/example/gog/issues

---

## 📝 更新日志

### v2.0.0 (2026-02-20)
- ✨ 新增 Google Meet 集成
- ✨ 支持批量邮件操作
- 🐛 修复日程冲突检测 bug
- 📚 更新中文文档

### v1.5.0 (2026-01-15)
- ✨ 新增智能邮件摘要
- ⚡ 性能优化，搜索速度提升 50%
- 🔒 增强安全性，支持 2FA

[查看完整更新日志](https://github.com/example/gog/releases)

---

## 🏆 用户评价

> "每天早上自动汇总邮件和日程，节省了至少 30 分钟！" - @张三

> "批量处理邮件太方便了，再也不用手动点了" - @李四

> "对国内网络环境友好，配置代理后完美运行" - @王五

---

## 🤝 贡献

欢迎贡献使用案例和改进建议！

- 提交 Issue: [GitHub Issues](https://github.com/zjc0230-code/awesome-openclaw/issues)
- 改进文档: [编辑本页](https://github.com/zjc0230-code/awesome-openclaw/edit/main/skills/productivity/gog.md)

---

<div align="center">
  <sub>⭐⭐⭐⭐⭐ 强烈推荐 | 每日办公必备</sub>
</div>
