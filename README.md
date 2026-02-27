# Awesome OpenClaw 🤖

> 精选的 OpenClaw Skills 策展库 - 为中国开发者提供经过验证的高质量 AI Agent 技能

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
[![GitHub stars](https://img.shields.io/github/stars/zjc0230-code/awesome-openclaw.svg?style=social)](https://github.com/zjc0230-code/awesome-openclaw)
[![Last Updated](https://img.shields.io/badge/last%20updated-2026--02--27-blue.svg)](https://github.com/zjc0230-code/awesome-openclaw)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

---

## 📖 简介

**Awesome OpenClaw** 是一个专注于中文社区的 OpenClaw Skills 精选库。我们不仅仅是一个列表，而是提供：

- ✅ **深度评测**：每个 Skill 都经过实际测试和评估
- 🇨🇳 **中文优先**：完整的中文文档和使用指南
- 🎯 **实战导向**：提供真实应用场景和代码示例
- 🛡️ **安全第一**：明确标注安全风险和使用建议
- 🚀 **持续更新**：自动化维护，定期验证有效性

---

## 🎯 项目特色

### 与其他 Awesome 项目的区别

| 特性 | 本项目 | 其他项目 |
|------|--------|----------|
| 语言支持 | 🇨🇳 中文为主 | 🌍 英文为主 |
| 评测深度 | ⭐⭐⭐⭐⭐ 实测评分 | ⭐⭐⭐ 简单描述 |
| 使用案例 | ✅ 每个都有实战案例 | ❌ 大多没有 |
| 安全审计 | ✅ VirusTotal + 人工审查 | ⚠️ 部分有 |
| 更新频率 | 🔄 每周自动检查 | 📅 不定期 |
| 国内环境 | ✅ 考虑网络和合规性 | ❌ 未考虑 |

---

## 🚀 快速开始

### 安装 OpenClaw (如果还没有)

```bash
# macOS
brew install openclaw

# Linux/Windows (通过 npm)
npm install -g openclaw

# 或使用官方安装脚本
curl -fsSL https://openclaw.ai/install.sh | bash
```

### 安装 Skills

```bash
# 安装单个 skill
openclaw skill install <skill-name>

# 安装推荐套装
openclaw skill install gog nano-pdf smart-router

# 查看已安装的 skills
openclaw skill list
```

### 使用示例

```bash
# 使用 PDF 处理 skill
openclaw ask "使用 nano-pdf 提取 contract.pdf 中的关键条款"

# 使用 Google Workspace skill
openclaw ask "用 gog 查看今天的日程安排"

# 使用智能路由节省成本
openclaw ask "使用 smart-router 分析这份长文档" --file report.pdf
```

---

## 📚 Skills 分类目录

### 🎯 生产力工具（必装推荐）

| Skill | 评分 | 描述 | 推荐场景 |
|-------|------|------|----------|
| [gog](skills/productivity/gog.md) | ⭐⭐⭐⭐⭐ 9.5/10 | Google Workspace 全能控制器 | 办公自动化、邮件管理 |
| [feishu-file-fetch](skills/productivity/feishu-file-fetch.md) | ⭐⭐⭐⭐⭐ 9.0/10 | 飞书文件自动化处理 | 团队协作、文件处理 |
| [nano-pdf](skills/productivity/nano-pdf.md) | ⭐⭐⭐⭐⭐ | PDF 智能处理 | 文档审阅、合同分析 |
| [1password](skills/productivity/1password.md) | ⭐⭐⭐⭐ | 密码管理器集成 | 安全管理、自动填充 |

[📂 查看完整列表](skills/productivity/)

---

### 💻 开发者工具（543+ Skills）

| Skill | 评分 | 描述 | 推荐场景 |
|-------|------|------|----------|
| [frontend-design](skills/development/frontend-design.md) | ⭐⭐⭐⭐⭐ | 前端 UI 生成器 | 快速原型、React/Next.js |
| [ecap-security-auditor](skills/development/security-auditor.md) | ⭐⭐⭐⭐⭐ | 代码安全审计 | DevSecOps、漏洞扫描 |
| [kubectl-skill](skills/development/kubectl.md) | ⭐⭐⭐⭐ | Kubernetes 管理 | 云原生部署、容器编排 |
| [git-notes-memory](skills/development/git-notes.md) | ⭐⭐⭐⭐ | Git 知识图谱 | 代码回溯、团队协作 |

[📂 查看完整列表](skills/development/)

---

### 🧠 AI 增强（287+ Skills，最大类别）

| Skill | 评分 | 描述 | 推荐场景 |
|-------|------|------|----------|
| [smart-router](skills/ai-enhancement/smart-router.md) | ⭐⭐⭐⭐⭐ | 多模型智能路由 | 成本优化、性能平衡 |
| [cognitive-memory](skills/ai-enhancement/cognitive-memory.md) | ⭐⭐⭐⭐⭐ | 长期记忆系统 | 项目跟踪、个性化学习 |
| [rationality](skills/ai-enhancement/rationality.md) | ⭐⭐⭐⭐ | 推理增强框架 | 减少幻觉、提升准确性 |
| [evolver](skills/ai-enhancement/evolver.md) | ⭐⭐⭐⭐ | AI 自进化引擎 | 任务优化、递归改进 |

[📂 查看完整列表](skills/ai-enhancement/)

---

### 🔍 信息检索（253+ Skills）

| Skill | 评分 | 描述 | 推荐场景 |
|-------|------|------|----------|
| [tavily-web-search](skills/information/tavily.md) | ⭐⭐⭐⭐⭐ | AI 优化搜索引擎 | 研究调研、快速查找 |
| [summarize](skills/information/summarize.md) | ⭐⭐⭐⭐⭐ | 全格式摘要工具 | 信息消费、学习整理 |
| [arxiv-monitor](skills/information/arxiv.md) | ⭐⭐⭐⭐ | 学术论文监控 | 技术跟踪、行业分析 |

[📂 查看完整列表](skills/information/)

---

### 💼 商业与营销（143+ Skills）

| Skill | 评分 | 描述 | 推荐场景 |
|-------|------|------|----------|
| [copywriting](skills/business/copywriting.md) | ⭐⭐⭐⭐⭐ | AI 文案生成 | 营销文案、产品描述 |
| [email-sequence](skills/business/email-sequence.md) | ⭐⭐⭐⭐ | 邮件营销自动化 | 客户培育、EDM |
| [seo-analytics](skills/business/seo.md) | ⭐⭐⭐⭐ | SEO 优化分析 | 网站优化、流量增长 |

[📂 查看完整列表](skills/business/)

---

### 🔐 安全与隐私

| Skill | 评分 | 描述 | 推荐场景 |
|-------|------|------|----------|
| [security-suite](skills/security/security-suite.md) | ⭐⭐⭐⭐⭐ | 系统安全扫描 | 定期安全检查 |
| [privacy-guard](skills/security/privacy-guard.md) | ⭐⭐⭐⭐ | 隐私保护工具 | 数据加密、匿名化 |

[📂 查看完整列表](skills/security/)

---

### 🎨 创意与媒体

| Skill | 评分 | 描述 | 推荐场景 |
|-------|------|------|----------|
| [veo](skills/creative/veo.md) | ⭐⭐⭐⭐⭐ | AI 视频生成 | 营销视频、短视频 |
| [comfyui](skills/creative/comfyui.md) | ⭐⭐⭐⭐⭐ | 可视化 AI 工作流 | 图像/视频生成 |
| [local-whisper](skills/creative/whisper.md) | ⭐⭐⭐⭐ | 本地语音转录 | 会议记录、字幕生成 |

[📂 查看完整列表](skills/creative/)

---

### 🏠 智能家居与自动化

| Skill | 评分 | 描述 | 推荐场景 |
|-------|------|------|----------|
| [homeassistant](skills/automation/homeassistant.md) | ⭐⭐⭐⭐ | 家庭助理集成 | 智能家居控制 |
| [openhue](skills/automation/openhue.md) | ⭐⭐⭐⭐ | 飞利浦 Hue 灯光 | 氛围营造、场景控制 |

[📂 查看完整列表](skills/automation/)

---

## 🎁 推荐套装

### 🎯 办公效率套装
适合日常办公和团队协作
```bash
openclaw skill install gog feishu-file-fetch nano-pdf 1password
```

### 💻 开发者套装
适合软件开发和 DevOps
```bash
openclaw skill install frontend-design ecap-security-auditor kubectl-skill git-notes-memory
```

### 🧠 AI 研究套装
适合 AI 研究和学习
```bash
openclaw skill install smart-router cognitive-memory rationality arxiv-monitor
```

### 💼 营销套装
适合市场营销和内容创作
```bash
openclaw skill install copywriting email-sequence seo-analytics veo
```

---

## 📖 使用指南

### 基础用法

```bash
# 1. 查看 skill 详情
openclaw skill info <skill-name>

# 2. 安装 skill
openclaw skill install <skill-name>

# 3. 更新 skill
openclaw skill update <skill-name>

# 4. 卸载 skill
openclaw skill uninstall <skill-name>
```

### 高级技巧

#### 1. 组合使用多个 Skills
```bash
openclaw ask "用 tavily 搜索最新的 AI 论文，然后用 summarize 生成摘要，最后用 copywriting 写一篇推文"
```

#### 2. 使用智能路由节省成本
```bash
# 自动选择最优模型
openclaw ask --use smart-router "分析这份 100 页的市场研究报告"
```

#### 3. 构建自定义工作流
```bash
# 创建自定义 skill 组合
openclaw workflow create my-research \
  --steps "tavily,summarize,copywriting" \
  --description "研究→摘要→发布"
```

---

## 🛡️ 安全建议

### ⚠️ 使用前必读

1. **审查代码**：安装前查看 skill 的源代码和权限要求
2. **隔离运行**：重要任务建议使用 Docker 容器隔离
3. **权限控制**：谨慎授予 API 密钥和文件系统访问权限
4. **定期更新**：及时更新 skills 以获取安全补丁
5. **备份数据**：使用自动化工具前先备份重要数据

### 🔒 安全评级说明

- ✅ **安全**：经过 VirusTotal 验证，无已知风险
- ⚠️ **谨慎**：需要敏感权限，建议审查后使用
- 🚫 **不推荐**：存在安全隐患或已过时

---

## 🌟 实战案例

### 案例 1：自动化每日工作流
```bash
# 早晨自动汇总邮件和日程
openclaw workflow run morning-routine
# 内部流程：gog → summarize → notify
```

### 案例 2：智能代码审查
```bash
# 自动审查 PR 并生成报告
openclaw ask "用 ecap-security-auditor 审查 PR #123，找出安全漏洞"
```

### 案例 3：内容创作流水线
```bash
# 从研究到发布的完整流程
openclaw workflow run content-pipeline \
  --input "AI 领域最新动态" \
  --output blog_post.md
# 内部流程：tavily → summarize → copywriting → publish
```

[📂 查看更多案例](examples/)

---

## 🤝 贡献指南

欢迎贡献！我们需要：

### 🎯 如何贡献

1. **推荐新 Skill**
   - Fork 本仓库
   - 填写 [Skill 推荐模板](templates/skill-recommendation.md)
   - 提交 Pull Request

2. **改进文档**
   - 修正错误
   - 补充使用案例
   - 翻译英文文档

3. **报告问题**
   - 失效的 Skills
   - 安全隐患
   - 使用问题

### ✅ 贡献规范

- 每个 Skill 必须提供实测评分和使用案例
- 必须通过 VirusTotal 安全检查
- 文档使用中文编写，代码示例需可复现
- 遵循 [贡献指南](CONTRIBUTING.md)

---

## 📊 项目统计

| 类别 | Skills 数量 | 更新时间 |
|------|-------------|----------|
| 🎯 生产力工具 | 120+ | 2026-02-27 |
| 💻 开发者工具 | 543+ | 2026-02-27 |
| 🧠 AI 增强 | 287+ | 2026-02-27 |
| 🔍 信息检索 | 253+ | 2026-02-27 |
| 💼 商业营销 | 143+ | 2026-02-27 |
| 🔐 安全隐私 | 89+ | 2026-02-27 |
| 🎨 创意媒体 | 156+ | 2026-02-27 |
| 🏠 智能自动化 | 72+ | 2026-02-27 |
| **总计** | **3002+** | 2026-02-27 |

*已筛选过滤 2703 个低质量/恶意 Skills*

---

## 🔗 相关资源

### 官方资源
- [OpenClaw 官网](https://openclaw.ai)
- [OpenClaw 文档](https://docs.openclaw.ai)
- [OpenClaw GitHub](https://github.com/openclaw/openclaw)

### 社区资源
- [VoltAgent/awesome-openclaw-skills](https://github.com/VoltAgent/awesome-openclaw-skills) - 英文社区最活跃
- [Awesome ChatGPT Prompts](https://github.com/f/awesome-chatgpt-prompts) - Prompt 学习
- [Prompt Engineering Guide](https://github.com/dair-ai/Prompt-Engineering-Guide) - 学术级指南

### 中文社区
- [OpenClaw 中文论坛](https://forum.openclaw.cn)
- [Skills 开发教程](https://tutorial.openclaw.cn)

---

## 📜 开源协议

本项目采用 [MIT License](LICENSE)。

- ✅ 可自由使用、修改、分发
- ✅ 可用于商业项目
- ⚠️ 需保留版权声明
- ❌ 不提供任何担保

---

## 💬 联系方式

- **Issues**: [GitHub Issues](https://github.com/zjc0230-code/awesome-openclaw/issues)
- **讨论**: [GitHub Discussions](https://github.com/zjc0230-code/awesome-openclaw/discussions)
- **邮件**: awesome-openclaw@example.com

---

## ⭐ Star History

如果这个项目对您有帮助，请给我们一个 Star ⭐️

[![Star History Chart](https://api.star-history.com/svg?repos=zjc0230-code/awesome-openclaw&type=Date)](https://star-history.com/#zjc0230-code/awesome-openclaw&Date)

---

## 🙏 致谢

感谢以下项目和贡献者：

- [VoltAgent](https://github.com/VoltAgent) - 提供了大量 Skills 筛选工作
- [OpenClaw 团队](https://openclaw.ai) - 创造了这个强大的平台
- 所有贡献者和使用者

---

<div align="center">
  <sub>Built with ❤️ by the Chinese OpenClaw Community</sub>
</div>
