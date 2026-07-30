#!/bin/bash
# ==============================================
# LLM 推理服务 — JupyterLab 启动脚本
# ==============================================
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# 检查虚拟环境
if [ ! -d ".venv" ]; then
    echo "🔧 创建虚拟环境..."
    python3 -m venv .venv
fi

# 激活虚拟环境
source .venv/bin/activate

# 安装依赖 (如果缺少)
if ! python -c "import jupyterlab" 2>/dev/null; then
    echo "📦 安装依赖..."
    pip install -r requirements.txt
fi

# 启动 JupyterLab
echo "🚀 启动 JupyterLab..."
echo "   地址: http://localhost:8888"
echo "   目录: notebooks/"
echo ""

jupyter lab \
    --notebook-dir=notebooks \
    --ip=0.0.0.0 \
    --port=8888 \
    --no-browser \
    --ServerApp.token='' \
    --ServerApp.password=''
