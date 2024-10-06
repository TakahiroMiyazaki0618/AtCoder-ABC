# ベースイメージとしてUbuntu 20.04を使用
FROM ubuntu:20.04

# 作業ディレクトリを作成
WORKDIR /AtCoder-ABC

# タイムゾーンの設定を無効化
ENV DEBIAN_FRONTEND=noninteractive

# パッケージリストの更新と、必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    curl \
    software-properties-common \
    build-essential \
    python3 \
    python3-pip \
    g++ \
    cmake \
    make \
    time \
    vim \
    git

# Node.jsのインストール（NodeSourceのリポジトリを利用）
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs

# atcoder-cli（acc）のインストール
RUN npm install -g atcoder-cli

# online-judge-tools（oj）のインストール
RUN pip3 install online-judge-tools

# AtCoder Library（ACL）のインストール
RUN git clone https://github.com/atcoder/ac-library.git
# ACLのインクルードパスを設定
ENV CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/AtCoder-ABC/ac-library

# デフォルトでbashを実行
CMD ["/bin/bash"]
