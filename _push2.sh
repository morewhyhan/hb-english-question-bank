#!/bin/bash
cd "/mnt/d/专升本英语题型研究"
rm -f _push.sh
git add -A
git -c core.quotepath=false commit -q -m "docs: add repository README (structure, type index, data notes)" || echo "(无改动)"
git push origin main 2>&1 | tail -3
echo "EXIT:$?"
