# 依存インストール専用ステージ
FROM ubuntu:22.04 AS deps
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apt-utils \
    build-essential \
    cmake \
    g++ \
    pkg-config \
    qtbase5-dev \
    qtbase5-dev-tools \
    libqt5test5 \
    libqt5test-dev \
    liblog4cpp5-dev && \
    rm -rf /var/lib/apt/lists/*

# ビルド用ステージ
FROM deps AS build
WORKDIR /app
COPY . .
CMD ["./build.sh"]
