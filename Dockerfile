FROM ubuntu:22.04

RUN apt-get update && apt-cache search qt5 | head -20
# 必要なツールとライブラリをインストール
RUN apt-get update && \
    apt-get install -y build-essential cmake g++ pkg-config && \
    apt-get install -y qtbase5-dev qtbase5-dev-tools libqt5test-dev liblog4cpp5-dev && \
    rm -rf /var/lib/apt/lists/*

# 作業ディレクトリ
WORKDIR /app

# ソースコードとMakefileをコピー
COPY . .

# デフォルトのコマンドは make を呼ぶ
CMD ["make"]
