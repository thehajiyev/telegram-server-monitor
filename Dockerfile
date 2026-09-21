FROM registry.access.redhat.com/ubi9/ubi

WORKDIR /app

COPY bot.sh .
COPY config.sh .

RUN dnf install -y procps-ng hostname util-linux && \
    dnf clean all

RUN chmod +x bot.sh

CMD ["./bot.sh"]
