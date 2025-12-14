#!/bin/bash
set -e

# 成果物をまとめるディレクトリ(/appはマウントディレクトリ)
mkdir -p /app/output/app2/bin

# 必要な成果物をコピー
cp -p bin/testApp2 /app/output/app2/bin/
