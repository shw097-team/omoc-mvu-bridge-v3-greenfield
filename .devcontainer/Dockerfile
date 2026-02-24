FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get ins:contentReference[oaicite:31]{index=31}recommends \
  ca-certificates curl git jq nodejs npm \
  && rm -rf /var/lib/apt/lists/*

# Install OpenCode CLI (pinned by your own policy; leave latest here but you should pin in production images)
RUN curl -fsSL https://opencode.ai/install | bash

WORKDIR /work