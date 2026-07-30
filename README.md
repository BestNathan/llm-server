# LLM 推理服务 — 从理论到实战

系统学习大模型推理服务的完整课程体系。
覆盖 Transformer 理论基础、推理框架 (vLLM/SGLang/TensorRT-LLM/llama.cpp)、前沿模型架构 (DeepSeek-V4) 和 GPU 显存管理。

## 课程结构

```
notebooks/
├── 00-overview.ipynb                   ← 架构全景 + 学习路径

├── theory/                             ← 理论前置 (6 篇)
│   ├── 00-llm-inference-primer          LLM 推理速览
│   ├── 05-transformer-architecture      Transformer 论文完整解析
│   ├── 01-transformer-inference-primer  推理视角的 Transformer
│   ├── 02-quantization-basics           量化基础
│   ├── 03-gpu-memory-layout             GPU 显存布局
│   └── 06-mixed-inference-optimization   混合推理优化

├── server/vllm/                        ← vLLM 系列 (6 篇)
│   ├── 01-architecture-overview         设计哲学 + 系统架构
│   ├── 02-pagedattention-kv-cache       PagedAttention 深度解析
│   ├── 03-scheduler-continuous-batching 调度器 + 抢占策略
│   ├── 04-prefix-caching-apc            APC 前缀缓存
│   ├── 05-multimodal-tool-calling       多模态 + 工具调用
│   └── 06-deployment-tuning             部署调优 + 监控

├── distributed/sglang/                 ← SGLang 系列 (5 篇)
│   ├── 01-architecture-overview         RadixAttention 设计哲学
│   ├── 02-radix-attention-deep-dive     Radix Tree 数据结构
│   ├── 03-constrained-decoding          FSM 约束生成
│   ├── 04-prefix-sharing-strategies     多场景前缀共享
│   └── 05-deployment-tuning             部署 + vs vLLM 选型

├── models/deepseek-v4/                 ← DeepSeek-V4 系列 (6 篇)
│   ├── 01-architecture-overview         五大创新全景
│   ├── 02-hybrid-sparse-attention       SWA+C4/C128 混合注意力
│   ├── 03-shadowradix-prefix-cache      ShadowRadix 前缀缓存
│   ├── 04-hisparse-memory               HiSparse 分层内存
│   ├── 05-training-miles-megatron       六维并行训练
│   └── 06-inference-deployment          推理优化

├── local/                               ← 本地推理
│   ├── 01-llama-cpp-deep-dive
│   └── 02-ollama-architecture
├── server/                              ← 服务端框架
│   ├── 03-vllm-deep-dive
│   ├── 04-tensorrt-llm-deep-dive
│   └── 05-tgi-architecture
└── distributed/                         ← 分布式框架
    ├── 06-sglang-deep-dive
    └── 07-ray-serve-llm
```

## 快速开始

```bash
# 1. 创建虚拟环境
python3 -m venv .venv
source .venv/bin/activate

# 2. 安装依赖
pip install -r requirements.txt

# 3. 启动 JupyterLab
./start.sh
# 或
jupyter lab --notebook-dir=notebooks
```

## 推荐学习路径

1. **入门**: `theory/00` → `theory/05` → `theory/01`
2. **进阶**: `theory/02` → `theory/03` → `theory/06`
3. **框架**: `server/vllm/` 系列 → `distributed/sglang/` 系列
4. **前沿**: `models/deepseek-v4/` 系列

共计 25+ 篇 notebook，涵盖从基础理论到生产部署的完整知识链。
