#!/usr/bin/env bash
set -euo pipefail

# 作業ディレクトリはリポジトリルートから呼ばれる想定
# このスクリプトを java-app ディレクトリ内で実行するか、
# ワークフローから `cd java-app && ./build.sh` と呼んでください。

ROOT_DIR="$(pwd)"
SRC_DIR="${ROOT_DIR}/src/main/java"
BUILD_DIR="${ROOT_DIR}/build"
BIN_DIR="${ROOT_DIR}"

# クリーン
rm -rf "${BUILD_DIR}"
mkdir -p "${BUILD_DIR}"

# コンパイル
javac -d "${BUILD_DIR}" $(find "${SRC_DIR}" -name "*.java")

# JAR 作成
JAR_NAME="testApp3.jar"
cd "${BUILD_DIR}"
jar cfe "${JAR_NAME}" com.example.App com/example/*.class
mv "${JAR_NAME}" "${BIN_DIR}/"

echo "Built ${BIN_DIR}/${JAR_NAME}"
