# LLM 推理服务 — 从理论到实战

系统学习大模型推理服务的完整课程体系。
按 **原理 → 框架 → 模型** 三层组织。

## 课程结构

```
notebooks/
├── 00-overview.ipynb                         ← 架构全景 + 学习路径

├── 01-theory/                                ← 原理 (6 篇)
│   ├── 01-llm-inference-primer                入门: token、自回归、TTFT/TPOT
│   ├── 02-transformer-architecture            Transformer 论文完整解析
│   ├── 03-transformer-inference               推理视角: Prefill/Decode/KV Cache
│   ├── 04-quantization-basics                 量化: GGUF/AWQ/GPTQ/FP8
│   ├── 05-gpu-memory-layout                   GPU 显存布局: 多模态/工具调用
│   └── 06-mixed-inference-optimization         混合推理: 四大框架对比

├── 02-frameworks/                            ← 框架 (7 个)
│   ├── llama-cpp/        1 篇   本地推理/量化
│   ├── ollama/           1 篇   llama.cpp 易用封装
│   ├── vllm/             6 篇   PagedAttention · 调度 · APC · 多模态 · 部署
│   ├── sglang/           5 篇   RadixAttention · 约束生成 · 前缀共享
│   ├── tensorrt-llm/     1 篇   NVIDIA 编译优化
│   ├── tgi/              1 篇   HuggingFace 推理标准
│   └── ray-serve/        1 篇   分布式调度

└── 03-models/                                ← 模型 (1 个)
    └── deepseek-v4/      6 篇   混合注意力 · ShadowRadix · HiSparse · 训练
```

## 快速开始

```bash
python3 -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
./start.sh
# → http://localhost:8888
```

## 学习路径

1. **原理**: `01-theory/` 按编号 01→06 顺序阅读
2. **框架**: `02-frameworks/vllm/` → `02-frameworks/sglang/`
3. **前沿**: `03-models/deepseek-v4/`

共计 28 篇 notebook，涵盖从基础理论到生产部署的完整知识链。
