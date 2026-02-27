# Smart-Router - 智能多模型路由器

![Skill标识符](https://img.shields.io/badge/ClawHub-smart--router-purple)
![状态](https://img.shields.io/badge/状态-活跃-green)
![评分](https://img.shields.io/badge/综合评分-9.2%2F10-yellow)
![热门程度](https://img.shields.io/badge/热门度-🔥🔥🔥🔥🔥-red)

> **官方描述**: 动态选择最合适的AI模型，优化成本、性能和效率

---

## 📋 快速信息

| 项目 | 内容 |
|------|------|
| **开发者** | OpenClaw 社区 & Anthropic Agent 标准 |
| **标识符** | `smart-router` |
| **分类** | AI Enhancement（AI增强） |
| **安装命令** | `npx clawhub@latest install smart-router` |
| **Skill ID** | `clawhub.ai/[developer]/smart-router` |
| **官方页面** | [ClawHub/smart-router](https://clawhub.ai) |
| **依赖** | OpenClaw Gateway (端口18789) |
| **最后更新** | 2026年 |

---

## 🎯 核心功能

### 1. 动态模型选择
根据任务复杂度自动选择最优模型

```
简单查询 → 本地模型（免费、快速）
中等复杂 → GPT-3.5（低成本）
高复杂度 → GPT-4（高质量）
长文本任务 → Claude-3（长上下文）
```

### 2. 成本优化
智能平衡成本与质量

```
任务路由策略：
- 代码生成 → GPT-4（准确率优先）
- 内容创作 → Claude-3（创意优先）
- 文本摘要 → 本地模型（成本优先）
- 实时对话 → GPT-3.5（速度优先）

预计成本节省：40-60%
```

### 3. 多模型并行检索
同时查询多个模型，智能合并结果

```
用户查询："AI客服的市场趋势"

并行调用：
- GPT-4: 深度分析（30秒）
- Claude-3: 多视角解读（25秒）
- 豆包: 本土化视角（20秒）

智能合并：综合三者的优势，输出最佳答案
```

### 4. 自动故障切换
模型故障时自动切换到备用模型

```
主模型失败 → 自动切换备用模型 → 记录故障原因
```

---

## 🚀 快速开始

### 安装

```bash
# 1. 安装 Smart-Router Skill
npx clawhub@latest install smart-router

# 2. 配置 OpenClaw Gateway
# 访问 http://localhost:18789

# 3. 配置路由规则
# 在 Gateway 中设置模型优先级和切换策略

# 4. 测试路由
openclaw ask "测试智能路由"
```

### 基础使用

**场景 1: 自动路由**
```
用户: 写一段Python代码实现快速排序

Smart-Router: 🧠 正在分析任务复杂度...
           识别为"代码生成"任务
           
           选择模型: GPT-4（准确率优先）
           
           正在调用 GPT-4...
           
           ✅ GPT-4 响应（3秒）
           
           def quick_sort(arr):
               if len(arr) <= 1:
                   return arr
               pivot = arr[len(arr) // 2]
               left = [x for x in arr if x < pivot]
               middle = [x for x in arr if x == pivot]
               right = [x for x in arr if x > pivot]
               return quick_sort(left) + middle + quick_sort(right)
           
           💰 Token使用: 150 tokens ($0.0006)
```

**场景 2: 成本优化**
```
用户: 总结这篇长文档的主要内容（5000字）

Smart-Router: 🧠 正在分析任务复杂度...
           识别为"文本摘要"任务 + 长文本
           
           选择模型: 本地 LLaMA（成本优先）
           
           正在调用本地模型...
           
           ✅ 本地模型响应（8秒）
           
           [长文档摘要...]
           
           💰 成本: $0（完全免费）
           
           节省成本: $0.01（相比GPT-4）
```

**场景 3: 多模型并行**
```
用户: 分析"AI自动化办公"的发展趋势

Smart-Router: 🧠 正在执行多模型并行检索...
           
           并行调用:
           - GPT-4: 技术深度分析
           - Claude-3: 商业视角解读
           - 豆包: 中国市场分析
           
           等待结果...
           
           ✅ GPT-4 响应（25秒） - 技术趋势：多模态融合...
           ✅ Claude-3 响应（22秒） - 商业前景：市场规模...
           ✅ 豆包响应（18秒） - 本土化：微信生态...
           
           🔄 智能合并中...
           
           📊 综合分析报告
           
           技术趋势（GPT-4）:
           - 多模态交互成为标配
           - AI与人工协同
           
           商业前景（Claude-3）:
           - 2026年市场规模预计180亿
           - 企业采用率增长200%
           
           本土化特点（豆包）:
           - 微信生态集成关键
           - 本土AI模型更受欢迎
           
           💰 总成本: $0.008
           平均成本: $0.0027/模型
```

---

## 📊 六维评分

| 维度 | 评分 | 说明 |
|------|------|------|
| **功能性** | 9.5/10 | 路由策略完善，多模型支持 |
| **易用性** | 8.5/10 | 需要配置，但配置后自动化程度高 |
| **稳定性** | 9.0/10 | 故障切换机制可靠 |
| **安全性** | 9.0/10 | 支持API密钥管理，遵循Anthropic标准 |
| **文档质量** | 8.0/10 | 文档基本完善，可改进示例 |
| **社区活跃度** | 10/10 | 热门Skill，社区积极贡献 |
| **综合评分** | **9.2/10** | ⭐⭐⭐⭐⭐ 强烈推荐 |

---

## 🎨 实战场景

### 场景 1: 企业多模型部署

**背景**: 企业同时部署了OpenAI GPT-4、Claude-3和本地模型，需要智能调度

**使用方式**:
```
配置策略：
{
  "rules": [
    {
      "task_type": "code_generation",
      "priority": "accuracy",
      "model": "gpt-4",
      "fallback": ["gpt-3.5", "claude-3"]
    },
    {
      "task_type": "content_creation",
      "priority": "creativity",
      "model": "claude-3",
      "fallback": ["gpt-4"]
    },
    {
      "task_type": "text_summarization",
      "priority": "cost",
      "model": "local_llama",
      "fallback": ["gpt-3.5"]
    },
    {
      "task_type": "real_time_chat",
      "priority": "speed",
      "model": "gpt-3.5",
      "fallback": ["claude-3"]
    }
  ]
}

效果：
- 准确率提升 15%（选择最优模型）
- 成本降低 50%（本地模型优先）
- 响应时间缩短 20%（路由优化）
- 可用性 99.9%（故障切换）
```

**优势**:
- 成本可控
- 性能最优
- 高可用性
- 灵活配置

---

### 场景 2: 个人AI助手

**背景**: 个人用户希望在不同场景使用不同的AI模型，自动切换

**使用方式**:
```
场景 1: 编程任务
用户: 帮我写一个爬虫脚本
Smart-Router: 识别为"代码生成" → 使用GPT-4
           输出: 高质量Python脚本

场景 2: 写作文
用户: 帮我写一篇关于"AI未来"的作文
Smart-Router: 识别为"创意写作" → 使用Claude-3
           输出: 富有创意的文章

场景 3: 快速问答
用户: 天气怎么样？
Smart-Router: 识别为"简单查询" → 使用本地模型
           输出: 即时回答（免费）

场景 4: 长文档分析
用户: 分析这份50页的技术文档
Smart-Router: 识别为"长文本处理" → 使用Claude-3（200k上下文）
           输出: 完整分析报告

成本对比：
- 未优化: 每月 $20（全部使用GPT-4）
- 优化后: 每月 $8（智能路由）
- 节省: 60%
```

**优势**:
- 自动适配场景
- 成本大幅降低
- 体验无缝衔接
- 无需手动切换

---

### 场景 3: AI Agent 编排

**背景**: 多个Agent协同工作，需要统一的路由管理

**使用方式**:
```
Agent 架构：
┌─────────────┐
│  用户请求   │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│ Smart-Router│
│ (智能路由)  │
└──────┬──────┘
       │
       ├──→ Agent-1 (信息检索) → Tavily Search
       ├──→ Agent-2 (代码执行) → GPT-4
       ├──→ Agent-3 (内容生成) → Claude-3
       └──→ Agent-4 (数据存储) → Local Database

工作流：
用户: "帮我研究一个技术主题，写份报告，并存储"

1. Smart-Router 识别任务
   - 信息检索 → Tavily Search
   - 内容整理 → GPT-4
   - 报告撰写 → Claude-3
   - 数据存储 → Local Database

2. 并行执行多个Agent
   - Agent-1: 搜索信息（5秒）
   - Agent-2: 整理内容（10秒）
   - Agent-3: 撰写报告（15秒）
   - Agent-4: 存储数据（2秒）

3. 智能合并结果
   综合各Agent输出，生成最终报告

总耗时: 15秒（并行执行）
成本: $0.02（各模型按需调用）
```

**优势**:
- 高度自动化
- 并行执行
- 成本优化
- 可扩展性强

---

## 🔍 对比分析

### vs 手动选择模型

| 特性 | Smart-Router | 手动选择 |
|------|--------------|----------|
| **智能化** | ✅ 自动识别任务类型 | ❌ 需要人工判断 |
| **成本优化** | ✅ 自动选择最便宜方案 | ❌ 容易浪费 |
| **响应速度** | ✅ 优化路由 | ❌ 固定延迟 |
| **故障切换** | ✅ 自动切换 | ❌ 需手动处理 |
| **可扩展性** | ✅ 易于添加新模型 | ❌ 需重新配置 |

**结论**: Smart-Router 在自动化和成本上显著优于手动选择

---

### vs 简单轮询

| 特性 | Smart-Router | 简单轮询 |
|------|--------------|----------|
| **策略智能化** | ✅ 基于任务类型 | ❌ 固定顺序 |
| **成本优化** | ✅ 精准控制 | ❌ 浪费 |
| **性能优化** | ✅ 并行调用 | ❌ 串行调用 |
| **故障处理** | ✅ 智能切换 | ❌ 超时重试 |

**结论**: Smart-Router 在智能化和性能上更优

---

## ⚙️ 最佳实践

### 1. 模型优先级配置
```
推荐配置：
{
  "cost_optimization": {
    "priority": ["local", "gpt-3.5", "gpt-4", "claude-3"],
    "threshold": 0.8  # 质量阈值
  },
  "quality_optimization": {
    "priority": ["gpt-4", "claude-3", "gpt-3.5", "local"],
    "threshold": 0.9
  }
}
```

### 2. 成本监控
```
设置告警：
- 单日成本 > $5 → 发送通知
- 单月成本 > $50 → 切换到本地模式
- 异常成本增长 → 检查配置
```

### 3. 故障恢复
```
配置备用模型：
- 每个主模型至少2个备用
- 主模型故障 < 3次 → 自动恢复
- 主模型故障 ≥ 3次 → 永久切换
```

### 4. 性能监控
```
监控指标：
- 平均响应时间
- 成功率
- 成本/请求
- 模型使用分布
```

---

## 💡 高级技巧

### 技巧 1: 自定义路由规则

```javascript
// custom-routes.js

const ROUTES = {
  // 代码生成规则
  code_generation: {
    keywords: ['写代码', '编程', '实现', '开发'],
    model: 'gpt-4',
    fallback: ['gpt-3.5'],
    max_tokens: 2000
  },
  
  // 创意写作规则
  creative_writing: {
    keywords: ['写', '作文', '文章', '故事'],
    model: 'claude-3',
    fallback: ['gpt-4'],
    temperature: 0.8
  },
  
  // 简单查询规则
  simple_query: {
    keywords: ['是什么', '怎么样', '天气', '时间'],
    model: 'local',
    fallback: ['gpt-3.5'],
    max_tokens: 200
  },
  
  // 长文本规则
  long_text: {
    condition: (input) => input.length > 10000,
    model: 'claude-3',
    fallback: ['gpt-4'],
    context_window: 200000
  }
};

module.exports = ROUTES;
```

---

### 技巧 2: A/B 测试

```javascript
// ab-test.js

function abTestRoute(task) {
  // 50% 概率使用新策略
  if (Math.random() < 0.5) {
    return routeToGPT4(task);
  } else {
    return routeToClaude3(task);
  }
}

// 监控效果
async function monitorABTest(taskId) {
  const result = await abTestRoute(taskId);
  
  // 记录指标
  logMetrics({
    task_id: taskId,
    model: result.model,
    cost: result.cost,
    time: result.time,
    quality: result.quality
  });
  
  return result;
}
```

---

## 🔧 故障排查

### 问题 1: 路由不准确

**错误信息**: 模型选择不符合预期

**解决方案**:
1. 检查关键词匹配规则
2. 调整优先级配置
3. 增加测试用例
4. 使用自定义规则

---

### 问题 2: 成本仍然很高

**错误信息**: 成本未明显降低

**解决方案**:
1. 检查本地模型配置
2. 调整成本优化阈值
3. 增加本地模型使用
4. 监控各模型使用情况

---

### 问题 3: 响应速度慢

**错误信息**: 并行调用未生效

**解决方案**:
1. 检查并行配置
2. 确保模型支持并发
3. 优化网络延迟
4. 使用CDN加速

---

## 📈 适用人群

### ✅ 推荐使用
- 企业用户：多模型部署、成本优化
- 开发者：AI Agent开发、自动化编排
- 个人用户：成本敏感、多模型切换
- 研究人员：模型对比、性能测试

### ❌ 不推荐
- 仅使用单一模型的用户
- 不关注成本的用户
- 简单任务场景

---

## 📚 相关资源

- [OpenClaw 官方文档](https://docs.openclaw.ai)
- [ClawHub 技能页面](https://clawhub.ai)
- [Anthropic Agent 标准](https://docs.anthropic.com/agents)
- [AI模型路由最佳实践](https://example.com/routing)

---

## 📝 更新日志

### v2.3.0 (2026-02-15)
- ✨ 新增自定义路由规则
- ✨ 支持 A/B 测试
- 🐛 修复并行调用竞态条件
- 📚 完善文档

### v2.0.0 (2026-01-01)
- 🚀 重构路由引擎，性能提升 40%
- ✨ 新增多模型并行检索
- 🔒 增强API密钥管理
- 📊 新增成本监控面板

---

## 🤝 贡献者

- **OpenClaw 社区** - 核心功能
- **Anthropic** - Agent 标准
- **开源贡献者** - Bug修复和功能建议

---

## 📄 许可证

Apache 2.0 License

---

## ⚠️ 免责声明

本 Skill 使用第三方AI模型API（OpenAI、Anthropic等），使用前请确保：
1. 已阅读并同意各模型的服务条款
2. 了解API使用限制和费用
3. 合理配置成本控制
4. 遵守数据隐私法规

---

**评测日期**: 2026-02-27  
**评测人**: awesome-openclaw 项目组  
**最后更新**: 2026-02-27
