FROM ubuntu:22.04

WORKDIR /app

# 必要なパッケージをインストール
RUN apt update && \
    apt install -y curl unzip libcurl4 screen libssl1.1

    # bedrockサーバーのダウンロード
    RUN curl -o bedrock-server.zip https://www.minecraft.net/bedrockdedicatedserver/bin-linux/bedrock-server-1.21.71.01.zip && \
        unzip bedrock-server.zip && \
            chmod +x bedrock_server

            EXPOSE 19132/udp
            CMD ["./bedrock_server"]