FROM node:22-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
    git python3 python3-pip curl ca-certificates \
    && rm -rf /var/lib/apt/lists/*
ARG HUGO_VERSION=0.127.0
RUN curl -L -o /tmp/hugo.deb \
    https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb \
    && dpkg -i /tmp/hugo.deb || apt-get install -f -y && rm /tmp/hugo.deb
COPY requirements.txt /app/requirements.txt
RUN pip3 install --no-cache-dir -r /app/requirements.txt
WORKDIR /app
EXPOSE 1313
CMD ["bash"]
