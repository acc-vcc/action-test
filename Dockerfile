FROM ubuntu:22.04

# 必要なツールとライブラリをインストール
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    cmake \
    g++ \
    pkg-config \
    qtbase5-dev \
    qtbase5-dev-tools \
    libqt5test-dev \
    liblog4cpp5-dev && \
    rm -rf /var/lib/apt/lists/*



# 作業ディレクトリ
WORKDIR /app

# ソースコードとMakefileをコピー
COPY . .

# デフォルトのコマンドは make を呼ぶ
CMD ["make"]
