#!/bin/bash
set -e

# Makefile生成(生成先：buildディレクトリ)
cmake -B build

# ビルド
cmake --build build
