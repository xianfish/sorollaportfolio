#!/usr/bin/env bash
set -euo pipefail

# =========================================================
# 索罗亚部署脚本 — Ubuntu 22.04 LTS
# 使用: chmod +x deploy/setup.sh && ./deploy/setup.sh <你的公网IP>
# =========================================================

IP="${1:?请提供公网IP，例如: ./deploy/setup.sh 1.2.3.4}"
PROJECT_DIR="${2:-$HOME/sorolla}"

echo "=== 1. 修复 Docker 权限 ==="
sudo usermod -aG docker "$USER"
echo "权限已添加，如果 docker 命令仍报权限错误，请退出 SSH 重新登录。"

echo ""
echo "=== 2. 克隆项目（如尚未克隆） ==="
if [ -d "$PROJECT_DIR/.git" ]; then
  echo "项目已存在，执行 git pull..."
  cd "$PROJECT_DIR" && git pull
else
  mkdir -p "$PROJECT_DIR"
  echo "请先手动将项目上传到 $PROJECT_DIR，或克隆仓库:"
  echo "  git clone <你的仓库URL> $PROJECT_DIR"
  exit 1
fi

echo ""
echo "=== 3. 配置环境变量 ==="
cat > "$PROJECT_DIR/.env" <<EOF
SITE_URL=http://$IP
GIT_USER=mayunbabamama
GIT_EMAIL=zchaolong20210907@163.com
EOF
echo ".env 文件已创建:"
cat "$PROJECT_DIR/.env"

echo ""
echo "=== 4. 构建并启动 ==="
cd "$PROJECT_DIR"
sudo docker compose up --build -d

echo ""
echo "=== 5. 验证 ==="
sleep 3
sudo docker compose ps
echo ""
echo "部署完成! 访问: http://$IP"
echo "CMS 管理: http://$IP/admin"
echo ""
echo "=== 后续更新命令 ==="
echo "  cd $PROJECT_DIR && git pull && sudo docker compose up --build -d"
