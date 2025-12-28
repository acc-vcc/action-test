#!/bin/bash
set -e

# 成果物をまとめるディレクトリ(/appはマウントディレクトリ)
mkdir -p /app/output/app4

# 必要な成果物をコピー
cp -p build/logfilter /app/output/app4/
