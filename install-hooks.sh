#!/bin/sh
# 安裝本專案的 git hooks（自動 push 等功能）
# 用法：在專案根目錄執行 sh install-hooks.sh

DIR="$(cd "$(dirname "$0")" && pwd)"
cp "$DIR/githooks/post-commit" "$DIR/.git/hooks/post-commit"
chmod +x "$DIR/.git/hooks/post-commit"
echo "✅ git hooks 已安裝完成，之後每次 commit 會自動 push"
