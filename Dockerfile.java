# 依存インストール専用ステージ
FROM ubuntu:22.04 AS deps
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      apt-utils \
      openjdk-17-jdk \
      maven \
      gradle \
      curl \
      unzip \
      zip \
      build-essential \
      git && \
    rm -rf /var/lib/apt/lists/*

# ビルド用ステージ
FROM deps AS build
WORKDIR /app
COPY . .
