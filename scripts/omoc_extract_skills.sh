#!/bin/bash
# 簡易抽取邏輯：依據 Markdown 標題分隔 Skills
SOURCE="$1"
TARGET_DIR="$2"
echo "Extracting skills from $SOURCE to $TARGET_DIR..."
# 此處為示意邏輯，實務上會依據 SK## 進行分割
grep "^#.*SK" "$SOURCE" > "$TARGET_DIR/skills_index.txt"
cp "$SOURCE" "$TARGET_DIR/OMOC_SKILLS_PACK.md"
echo "Extraction Complete."
