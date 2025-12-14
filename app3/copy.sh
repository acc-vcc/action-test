#!/bin/bash
set -e

# 成果物をまとめるディレクトリ(/appはマウントディレクトリ)
mkdir -p /app/output/app3

# 必要な成果物をコピー
cp -p testApp3.jar /app/output/app3/
