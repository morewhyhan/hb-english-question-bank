#!/bin/bash
cd "/mnt/d/专升本英语题型研究"
git add -A
git commit -q -m "chore: remove temp push script" || echo "(无改动)"
git push origin main 2>&1 | tail -2
git status --short | head -3
git log --oneline -1
