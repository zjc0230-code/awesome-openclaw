# Tavily Web Search - AI 优化搜索引擎

![Skill标识符](https://img.shields.io/badge/ClawHub-tavily--search-blue)
![状态](https://img.shields.io/badge/状态-活跃-green)
![评分](https://img.shields.io/badge/综合评分-9.5%2F10-yellow)
![热门程度](https://img.shields.io/badge/热门度-🔥🔥🔥🔥🔥-red)

> **官方描述**: 专为 AI 优化的搜索引擎，提供结构化、高精度的实时搜索结果

---

## 📋 快速信息

| 项目 | 内容 |
|------|------|
| **开发者** | Tavily AI |
| **标识符** | `tavily-search` |
| **分类** | Information Retrieval（信息检索） |
| **安装命令** | `clawhub install tavily-search` |
| **Skill ID** | `clawhub.ai/arun-8687/tavily-search` |
| **官方页面** | [clawhub.ai/tavily-search](https://clawhub.ai/arun-8687/tavily-search) |
| **依赖** | Tavily API Key（可申请免费额度） |
| **最后更新** | 2026年 |

---

## 🎯 核心功能

### 1. AI 优化搜索
返回经过结构化处理的结果，精简且相关性高

```
用户: 搜索"2026年OpenClaw最新动态"
Tavily: 返回5-10个高质量结果，每个包含：
     - 标题
     - 摘要（AI 优化）
     - 来源
     - 相关性评分
     - 时间戳
```

### 2. 实时联网
赋予 OpenClaw 实时获取全网信息的能力

```
用户: 查找今天的热门新闻
Tavily: 实时抓取最新新闻
     - 按热度排序
     - 过滤低质量内容
     - 支持多语言
```

### 3. 深度搜索
支持复杂查询和深度分析

```
用户: 深度分析"AI自动化办公"的最佳实践
Tavily: 深度搜索并聚合信息
     - 跨多个来源
     - 识别权威内容
     - 提供综合分析
```

### 4. 新闻专题搜索
专注于新闻和实时事件

```
用户: 搜索最新的"AI监管政策"
Tavily: 实时新闻聚合
     - 按时间排序
     - 过滤过期内容
     - 突出重点信息
```

---

## 🚀 快速开始

### 安装

```bash
# 1. 安装 Tavily Web Search Skill
clawhub install tavily-search

# 2. 获取 API Key（免费额度）
# 访问 https://tavily.com 注册并获取 API Key

# 3. 配置 API Key
openclaw config set tavily.api_key <your-api-key>

# 4. 验证连接
openclaw skill test tavily-search
```

### 基础使用

**场景 1: 基础搜索**
```
用户: 搜索"OpenClaw部署教程"
Tavily: ✅ 找到 8 个结果
       
       1. 2026年OpenClaw快速部署攻略 - 阿里云开发者
          相关性: 95% | 2026-02-20
          摘要: 详解四大核心Skills和实战指南...
       
       2. OpenClaw/Clawdbot实战攻略 - 阿里云开发者
          相关性: 92% | 2026-02-18
          摘要: 3步部署+3大核心skills+5个颠覆级案例...
       
       [更多结果...]
```

**场景 2: 实时新闻**
```
用户: 查找今天关于AI的热门新闻
Tavily: 🔥 今日AI热门新闻（2026-02-27）
       
       1. OpenAI发布GPT-5预览版
          热度: ⭐⭐⭐⭐⭐ | 来源: TechCrunch
          摘要: OpenAI今日发布GPT-5预览版，支持多模态输入...
       
       2. Google推出Gemini 2.0
          热度: ⭐⭐⭐⭐⭐ | 来源: The Verge
          摘要: Google今日宣布推出Gemini 2.0，性能提升40%...
       
       [更多新闻...]
```

**场景 3: 深度分析**
```
用户: 深度分析"Rust编程语言"在企业中的应用
Tavily: 🔍 深度分析结果
       
       综述：Rust在企业中的应用呈快速增长趋势
       
       关键发现：
       - 2025年企业采用率增长 200%
       - 主要应用场景：系统编程、WebAssembly
       - 优势：内存安全、高性能、并发
       
       权威来源：
       - Stack Overflow 2025 开发者调查
       - Rust 官方企业案例集
       - 10+ 家大企业实践案例
       
       [详细分析报告...]
```

---

## 📊 六维评分

| 维度 | 评分 | 说明 |
|------|------|------|
| **功能性** | 10/10 | 涵盖所有搜索场景，AI 优化效果显著 |
| **易用性** | 10/10 | 自然语言交互，开箱即用 |
| **稳定性** | 9/10 | 基于 Tavily 官方 API，响应稳定 |
| **安全性** | 9/10 | 过滤恶意网站，可配置安全策略 |
| **文档质量** | 9/10 | 文档完善，API 文档清晰 |
| **社区活跃度** | 10/10 | 热门 Skill，持续更新 |
| **综合评分** | **9.5/10** | ⭐⭐⭐⭐⭐ 强烈推荐 |

---

## 🎨 实战场景

### 场景 1: 市场调研分析

**背景**: 快速调研某个行业的最新趋势和竞争格局

**使用方式**:
```
用户: 市场调研任务：
     1. 搜索"AI客服"行业的最新趋势
     2. 分析主要竞争对手的产品特性
     3. 查找市场规模和增长预测
     4. 整理成一份完整的市场分析报告
     
     重点关注：
     - 2025-2026年的发展
     - 中国市场情况
     - 技术突破点
     - 典型客户案例

Tavily: 📊 正在执行深度市场调研...
       
       第一部分：行业趋势分析
       ✅ 已分析 15 个权威来源
       
       关键趋势：
       1. 多模态交互成为标配（语音+文字+图片）
       2. AI 客服与人工客服无缝衔接
       3. 个性化服务能力大幅提升
       4. 成本降低 60%，效率提升 300%
       
       第二部分：竞争对手分析
       ✅ 已识别 8 个主要竞争对手
       
       对比表格：
       | 产品 | 优势 | 劣势 | 市场份额 |
       |------|------|------|----------|
       | 产品A | 多模态强 | 价格高 | 35% |
       | 产品B | 成本低 | 功能单一 | 25% |
       | ... | ... | ... | ... |
       
       第三部分：市场规模
       ✅ 已收集 5 个数据来源
       
       2025年市场规模：120 亿元人民币
       2026年预测：180 亿元人民币
       年增长率：50%
       
       第四部分：中国市场
       ✅ 已分析 10 个本地化案例
       
       中国市场特点：
       - 微信生态集成是关键
       - 本土化AI模型更受欢迎
       - 合规要求严格
       - 典型客户：阿里巴巴、腾讯、字节跳动
       
       📄 完整报告已生成：ai_customer_service_market_research_2026.md
```

**优势**:
- 深度调研，多源验证
- 结构化输出，便于分析
- 本土化视角
- 实时数据

---

### 场景 2: 学术研究助手

**背景**: 辅助学术研究，快速查找相关论文和最新进展

**使用方式**:
```
用户: 学术研究任务：
     研究主题：Transformer模型在自然语言处理中的应用
     
     需要查找：
     1. 最新发表的综述论文（2025-2026）
     2. 重要的改进和创新
     3. 实际应用案例
     4. 未来研究方向
     
     要求：
     - 优先选择顶级会议（NeurIPS, ICML, ACL）
     - 关注中国团队的工作
     - 提供论文链接和摘要

Tavily: 📚 正在执行学术搜索...
       
       已检索 50+ 学术来源
       
       最新综述论文：
       1. "Transformer: A Survey and Future Directions"
          会议: NeurIPS 2025
          引用: 120+
          摘要：全面综述Transformer的发展历程...
          链接: [arXiv:2512.xxxxx]
       
       2. "大语言模型优化技术综述"
          会议: ACL 2026
          作者: 清华大学团队
          引用: 80+
          摘要：总结LLM优化的10大技术方向...
          链接: [arXiv:2601.xxxxx]
       
       重要创新：
       1. 稀疏注意力机制 - 效率提升 5x
       2. 多模态融合 - 支持图像+文本
       3. 动态架构 - 根据任务调整
       
       应用案例：
       1. 机器翻译 - 精度提升 20%
       2. 代码生成 - 成功率 85%
       3. 文档摘要 - 保留度 95%
       
       研究方向：
       - 更长的上下文窗口
- 更低的计算成本
       - 更强的推理能力
       
       📄 研究报告已生成：transformer_research_survey.md
       📚 论文清单已导出：transformer_papers.bib
```

**优势**:
- 学术级精度
- 支持文献管理
- 实时追踪最新进展
- 多源交叉验证

---

### 场景 3: 竞品监控

**背景**: 持续监控竞争对手的最新动态

**使用方式**:
```
用户: 竞品监控任务：
     
     目标公司：OpenAI, Anthropic, Google DeepMind
     
     监控内容：
     - 产品更新
     - 商业动态
     - 技术突破
     - 市场活动
     - 融资信息
     
     更新频率：每日汇总
     输出格式：Markdown + 邮件发送

Tavily: 🔍 正在执行竞品监控...
       
       今日监控报告（2026-02-27）
       ========================
       
       OpenAI:
       ✅ 产品更新：GPT-5预览版发布
          - 支持实时视频输入
          - 上下文长度提升至1M tokens
          - 推理速度提升 40%
       
       Anthropic:
       ✅ 商业动态：与Microsoft达成战略合作
          - Claude 3 将集成到Azure
          - 共建AI安全研究院
       
       Google DeepMind:
       ✅ 技术突破：AlphaFold 3 发布
          - 蛋白质结构预测精度达 98%
          - 支持蛋白质-小分子相互作用
       
       📊 市场对比：
       - OpenAI 市场份额：45%
       - Anthropic：20%
       - Google DeepMind：15%
       
       📧 报告已发送：competitor_monitoring_2026-02-27.md
```

**优势**:
- 实时监控
- 结构化输出
- 自动通知
- 历史追溯

---

## 🔍 对比分析

### vs Google Search

| 特性 | Tavily Web Search | Google Search |
|------|-------------------|---------------|
| **AI优化** | ✅ 专为AI设计 | ❌ 为人类设计 |
| **结果格式** | 结构化JSON | 网页HTML |
| **相关性** | 高（AI筛选） | 中（算法排序） |
| **噪音过滤** | ✅ 自动过滤 | ❌ 包含广告 |
| **API集成** | ✅ 原生支持 | ⚠️ 需爬虫 |
| **实时性** | 高 | 高 |
| **成本** | API调用 | 免费 |

**结论**: Tavily 专为AI优化，结果更精准、更易处理

---

### vs Bing Search API

| 特性 | Tavily Web Search | Bing Search API |
|------|-------------------|-----------------|
| **AI优化** | ✅ 专为AI设计 | ❌ 通用API |
| **结果质量** | 高 | 中 |
| **易用性** | 简单 | 复杂 |
| **费用** | 免费额度 | 按量收费 |
| **限流** | 宽松 | 严格 |

**结论**: Tavily 在易用性和成本上更优

---

### vs Brave Search API

| 特性 | Tavily Web Search | Brave Search API |
|------|-------------------|------------------|
| **AI优化** | ✅ 专为AI设计 | ❌ 隐私优先 |
| **结果质量** | 高 | 中高 |
| **隐私** | 中 | 高 |
| **免费额度** | 慷慨 | 有限 |
| **中文支持** | 好 | 一般 |

**结论**: Tavily 在AI优化和中文支持上更优

---

## ⚙️ 最佳实践

### 1. 搜索查询优化
```
✅ 推荐:
- 使用具体关键词："AI客服 市场规模 2026"
- 添加时间限制："最新" 或 "2026年"
- 指定来源："学术论文" 或 "官方文档"
- 使用自然语言："查找关于X的10个权威来源"

❌ 避免:
- 过于宽泛："AI"
- 模糊表述："一些关于..."
- 不相关信息混杂
```

### 2. 结果过滤
```
设置过滤条件:
- 时间范围：仅近 7 天 / 30 天
- 来源类型：仅权威来源 / 学术论文 / 官方文档
- 语言：仅中文 / 英文 / 多语言
- 排序：按相关性 / 按时间 / 按热度
```

### 3. 结果验证
```
✅ 推荐:
- 交叉验证多个来源
- 检查发布时间（避免过期信息）
- 验证来源权威性
- 记录引用链接

❌ 避免:
- 盲目相信单一来源
- 使用未验证的信息
- 忽略发布时间
```

### 4. 集成其他 Skills
```
推荐组合:
1. Tavily + Summarize
   搜索 + 摘要 = 高效信息消费

2. Tavily + Copywriting
   搜索 + 文案 = 快速内容创作

3. Tavily + Cognitive Memory
   搜索 + 记忆 = 持续知识积累

4. Tavily + Smart Router
   搜索 + 路由 = 成本优化
```

---

## 💡 高级技巧

### 技巧 1: 自定义搜索模板

创建常用搜索模板，提高效率：

```python
# tavily_search_templates.py

TEMPLATES = {
    "market_research": """
    搜索"{query}"的市场调研报告，
    重点关注：
    - 市场规模和增长预测
    - 主要竞争对手
    - 技术趋势
    - 典型客户案例
    输出格式：结构化报告
    """,
    
    "academic_search": """
    搜索"{query}"的最新学术论文，
    要求：
    - 优先顶级会议（NeurIPS, ICML, ACL）
    - 近2年发表
    - 提供摘要和链接
    输出格式：BibTeX + 摘要
    """,
    
    "competitor_monitor": """
    搜索"{company}"的最新动态，
    包括：
    - 产品更新
    - 商业活动
    - 融资信息
    时间范围：近30天
    输出格式：时间线
    """
}
```

---

### 技巧 2: 批量搜索优化

对于大量搜索任务，优化性能：

```bash
# 使用并行搜索
for query in $(cat search_queries.txt); do
    openclaw ask "使用tavily搜索：${query}" &
done
wait

# 结果汇总
openclaw ask "汇总所有搜索结果，生成分析报告"
```

---

### 技巧 3: 搜索结果缓存

缓存搜索结果，避免重复调用：

```python
# tavily_cache.py

import hashlib
import json
from datetime import datetime, timedelta

CACHE_DIR = "./tavily_cache"
CACHE_TTL = timedelta(hours=24)

def get_cache_key(query):
    """生成缓存键"""
    return hashlib.md5(query.encode()).hexdigest()

def search_with_cache(query):
    """带缓存的搜索"""
    cache_key = get_cache_key(query)
    cache_file = f"{CACHE_DIR}/{cache_key}.json"
    
    # 检查缓存
    if os.path.exists(cache_file):
        with open(cache_file) as f:
            data = json.load(f)
            cached_time = datetime.fromisoformat(data['timestamp'])
            
            # 检查是否过期
            if datetime.now() - cached_time < CACHE_TTL:
                return data['results']
    
    # 执行搜索
    results = tavily_search(query)
    
    # 保存缓存
    os.makedirs(CACHE_DIR, exist_ok=True)
    with open(cache_file, 'w') as f:
        json.dump({
            'timestamp': datetime.now().isoformat(),
            'query': query,
            'results': results
        }, f)
    
    return results
```

---

## 🔧 故障排查

### 问题 1: API 限制

**错误信息**: `Error: API rate limit exceeded`

**解决方案**:
1. 检查API使用量是否超出免费额度
2. 升级到付费计划（$0.01/次查询）
3. 实现搜索结果缓存
4. 减少不必要的搜索

---

### 问题 2: 搜索结果为空

**错误信息**: `No results found`

**解决方案**:
1. 优化搜索查询，使用更具体的关键词
2. 移除限制条件（时间、语言）
3. 检查网络连接
4. 尝试不同的搜索引擎（配置）

---

### 问题 3: 结果质量差

**错误信息**: 结果相关性低

**解决方案**:
1. 使用自然语言描述查询
2. 添加更多上下文信息
3. 指定来源类型（学术论文、新闻等）
4. 使用多个搜索词验证

---

## 📈 适用人群

### ✅ 推荐使用
- 研究人员：学术研究、论文调研
- 市场分析师：市场调研、竞品分析
- 内容创作者：信息收集、素材查找
- 开发者：技术调研、问题排查
- 企业用户：商业情报、决策支持

### ❌ 不推荐
- 仅需简单搜索的用户（可用免费搜索引擎）
- 对实时性要求极高的场景（需专业数据源）

---

## 📚 相关资源

- [Tavily 官方文档](https://tavily.com/docs)
- [Tavily API 参考](https://tavily.com/docs/api)
- [ClawHub 技能页面](https://clawhub.ai/arun-8687/tavily-search)
- [信息检索最佳实践](https://example.com/search-best-practices)

---

## 📝 更新日志

### v2.5.0 (2026-02-20)
- ✨ 新增深度搜索模式
- ✨ 支持多语言结果聚合
- 🐛 修复中文搜索结果乱码问题
- 📚 完善API文档

### v2.0.0 (2026-01-01)
- 🚀 重构搜索算法，相关性提升 30%
- ✨ 新增实时新闻搜索
- 🔒 增强安全过滤
- 📚 更新示例

---

## 🤝 贡献者

- **Tavily AI 团队** - 核心功能
- **OpenClaw 社区** - 集成和优化
- **开源贡献者** - Bug修复和功能建议

---

## 📄 许可证

Apache 2.0 License

---

## ⚠️ 免责声明

本 Skill 使用 Tavily API，使用前请确保：
1. 已阅读并同意 Tavily 服务条款
2. 了解 API 使用限制和费用
3. 遵守数据隐私法规
4. 合理使用，避免滥用

---

**评测日期**: 2026-02-27  
**评测人**: awesome-openclaw 项目组  
**最后更新**: 2026-02-27
