#!/bin/bash
set -e

# 成果物をまとめるディレクトリ(/appはマウントディレクトリ)
mkdir -p /app/output/app1/bin

# 必要な成果物をコピー
cp -p bin/* /app/output/app1/bin/
