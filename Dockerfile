# Pythonのイメージ
FROM python:3.13.0

# 作業ディレクトリの設定
WORKDIR /usr/local/python

# pipのアップデート
RUN pip install --upgrade pip

# 必要なパッケージをインストール
COPY requirements.txt ./
RUN pip install -r requirements.txt

# ローカルのソースコードをコピー
COPY . .

EXPOSE 8000
