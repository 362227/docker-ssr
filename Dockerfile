FROM jlesage/baseimage-gui:ubuntu-20.04

MAINTAINER KallyDev kallydev@gmail.com

RUN apt update && apt install -y git python libsodium-dev

RUN git clone -b manyuser https://github.com/shadowsocksr-backup/shadowsocksr

ENV SSR_PORT="9001" \
    SSR_PASSWORD="9787543754" \
    SSR_METHOD="aes-256-cfb" \
    SSR_PROTOCOL="origin" \
    SSR_OBFS="plain"

EXPOSE $SSR_PORT

WORKDIR shadowsocksr

CMD bash bbr.sh

CMD python shadowsocks/server.py -p $SSR_PORT -k $SSR_PASSWORD -m $SSR_METHOD -O $SSR_PROTOCOL -o $SSR_OBFS
