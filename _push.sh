#!/bin/bash
set -e
cd "/mnt/d/专升本英语题型研究"
cat > .gitignore <<'EOF'
# 超过 GitHub 单文件 100MB 限制，暂不上传，本地保留
00_原卷PDF/02_知本_15套/1-10答案.pdf

# 临时文件
.tmp_*
_work*
*.tmp
EOF
if [ ! -d .git ]; then git init -b main >/dev/null; fi
git add -A
git -c core.quotepath=false commit -q -m "Initial commit: 50 mock exam papers, 11 question banks, 10-layer research" || echo "(无新改动)"
git log --oneline -1
du -sh .git
