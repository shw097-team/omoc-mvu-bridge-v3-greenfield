#!/usr/bin/env python3
"""Clean spec export tool: strip code blocks and command lines from OMOC specs."""

import re
import argparse
from pathlib import Path

def export_clean(src: Path, dst: Path):
    """Export clean spec from source file."""
    content = src.read_text(encoding='utf-8', errors='replace')
    
    # Remove code blocks (triple backticks)
    content = re.sub(r'```[\s\S]*?```', '', content)
    
    # Remove command-starting lines
    lines = content.splitlines()
    filtered = [
        ln for ln in lines 
        if not re.search(r'(?i)^(\s*\$\s|\s*(bash|curl|git|npm|pip|docker|kubectl)\b)', ln)
    ]
    
    dst.write_text('\n'.join(filtered), encoding='utf-8')

def main():
    ap = argparse.ArgumentParser(description='Export clean specs from OMOC source files')
    ap.add_argument('--out', required=True, help='Output directory')
    ap.add_argument('inputs', nargs='+', help='Input spec files')
    args = ap.parse_args()
    
    out_dir = Path(args.out)
    out_dir.mkdir(parents=True, exist_ok=True)
    
    for src_path in args.inputs:
        src = Path(src_path)
        if src.exists():
            export_clean(src, out_dir / src.name)
            print(f"✓ {src.name} → {out_dir.name}/")
        else:
            print(f"✗ {src.name} not found", flush=True)

if __name__ == '__main__':
    main()
