#!/bin/bash
set -e

# 成果物をまとめるディレクトリ
mkdir -p output/app2

# 必要な成果物をコピー
cp -p bin/testApp2 output/app2/bin/
