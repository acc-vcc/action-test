#!/bin/bash
set -e

# .pro ファイルがある前提で Makefile を生成
qmake testApp.pro

# ビルド
make "$@"
