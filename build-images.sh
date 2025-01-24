#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker build --file 1.17/25.3.2/Dockerfile -t cimg/elixir:1.17.2-erlang-25.3.2 -t cimg/elixir:1.17-erlang-25.3.2 --platform linux/amd64 --push .
docker build --file 1.17/25.3.2/node/Dockerfile -t cimg/elixir:1.17.2-erlang-25.3.2-node -t cimg/elixir:1.17-erlang-25.3.2-node --platform linux/amd64 --push .
docker build --file 1.17/25.3.2/browsers/Dockerfile -t cimg/elixir:1.17.2-erlang-25.3.2-browsers -t cimg/elixir:1.17-erlang-25.3.2-browsers --platform linux/amd64 --push .
docker build --file 1.17/26.2.1/Dockerfile -t cimg/elixir:1.17.2-erlang-26.2.1 -t cimg/elixir:1.17-erlang-26.2.1 --platform linux/amd64 --push .
docker build --file 1.17/26.2.1/node/Dockerfile -t cimg/elixir:1.17.2-erlang-26.2.1-node -t cimg/elixir:1.17-erlang-26.2.1-node --platform linux/amd64 --push .
docker build --file 1.17/26.2.1/browsers/Dockerfile -t cimg/elixir:1.17.2-erlang-26.2.1-browsers -t cimg/elixir:1.17-erlang-26.2.1-browsers --platform linux/amd64 --push .
docker build --file 1.17/25.3.2/Dockerfile -t cimg/elixir:1.17.1-erlang-25.3.2 -t cimg/elixir:1.17-erlang-25.3.2 --platform linux/amd64 --push .
docker build --file 1.17/25.3.2/node/Dockerfile -t cimg/elixir:1.17.1-erlang-25.3.2-node -t cimg/elixir:1.17-erlang-25.3.2-node --platform linux/amd64 --push .
docker build --file 1.17/25.3.2/browsers/Dockerfile -t cimg/elixir:1.17.1-erlang-25.3.2-browsers -t cimg/elixir:1.17-erlang-25.3.2-browsers --platform linux/amd64 --push .
docker build --file 1.17/26.2.1/Dockerfile -t cimg/elixir:1.17.1-erlang-26.2.1 -t cimg/elixir:1.17-erlang-26.2.1 --platform linux/amd64 --push .
docker build --file 1.17/26.2.1/node/Dockerfile -t cimg/elixir:1.17.1-erlang-26.2.1-node -t cimg/elixir:1.17-erlang-26.2.1-node --platform linux/amd64 --push .
docker build --file 1.17/26.2.1/browsers/Dockerfile -t cimg/elixir:1.17.1-erlang-26.2.1-browsers -t cimg/elixir:1.17-erlang-26.2.1-browsers --platform linux/amd64 --push .
docker build --file 1.17/25.3.2/Dockerfile -t cimg/elixir:1.17.0-erlang-25.3.2 -t cimg/elixir:1.17-erlang-25.3.2 --platform linux/amd64 --push .
docker build --file 1.17/25.3.2/node/Dockerfile -t cimg/elixir:1.17.0-erlang-25.3.2-node -t cimg/elixir:1.17-erlang-25.3.2-node --platform linux/amd64 --push .
docker build --file 1.17/25.3.2/browsers/Dockerfile -t cimg/elixir:1.17.0-erlang-25.3.2-browsers -t cimg/elixir:1.17-erlang-25.3.2-browsers --platform linux/amd64 --push .
docker build --file 1.17/26.2.1/Dockerfile -t cimg/elixir:1.17.0-erlang-26.2.1 -t cimg/elixir:1.17-erlang-26.2.1 --platform linux/amd64 --push .
docker build --file 1.17/26.2.1/node/Dockerfile -t cimg/elixir:1.17.0-erlang-26.2.1-node -t cimg/elixir:1.17-erlang-26.2.1-node --platform linux/amd64 --push .
docker build --file 1.17/26.2.1/browsers/Dockerfile -t cimg/elixir:1.17.0-erlang-26.2.1-browsers -t cimg/elixir:1.17-erlang-26.2.1-browsers --platform linux/amd64 --push .
docker build --file 1.16/25.3.2/Dockerfile -t cimg/elixir:1.16.3-erlang-25.3.2 -t cimg/elixir:1.16-erlang-25.3.2 --platform linux/amd64 --push .
docker build --file 1.16/25.3.2/node/Dockerfile -t cimg/elixir:1.16.3-erlang-25.3.2-node -t cimg/elixir:1.16-erlang-25.3.2-node --platform linux/amd64 --push .
docker build --file 1.16/25.3.2/browsers/Dockerfile -t cimg/elixir:1.16.3-erlang-25.3.2-browsers -t cimg/elixir:1.16-erlang-25.3.2-browsers --platform linux/amd64 --push .
docker build --file 1.16/26.2.1/Dockerfile -t cimg/elixir:1.16.3-erlang-26.2.1 -t cimg/elixir:1.16-erlang-26.2.1 --platform linux/amd64 --push .
docker build --file 1.16/26.2.1/node/Dockerfile -t cimg/elixir:1.16.3-erlang-26.2.1-node -t cimg/elixir:1.16-erlang-26.2.1-node --platform linux/amd64 --push .
docker build --file 1.16/26.2.1/browsers/Dockerfile -t cimg/elixir:1.16.3-erlang-26.2.1-browsers -t cimg/elixir:1.16-erlang-26.2.1-browsers --platform linux/amd64 --push .
docker build --file 1.15/25.3.2/Dockerfile -t cimg/elixir:1.15.8-erlang-25.3.2 -t cimg/elixir:1.15-erlang-25.3.2 --platform linux/amd64 --push .
docker build --file 1.15/25.3.2/node/Dockerfile -t cimg/elixir:1.15.8-erlang-25.3.2-node -t cimg/elixir:1.15-erlang-25.3.2-node --platform linux/amd64 --push .
docker build --file 1.15/25.3.2/browsers/Dockerfile -t cimg/elixir:1.15.8-erlang-25.3.2-browsers -t cimg/elixir:1.15-erlang-25.3.2-browsers --platform linux/amd64 --push .
docker build --file 1.15/26.2.1/Dockerfile -t cimg/elixir:1.15.8-erlang-26.2.1 -t cimg/elixir:1.15-erlang-26.2.1 --platform linux/amd64 --push .
docker build --file 1.15/26.2.1/node/Dockerfile -t cimg/elixir:1.15.8-erlang-26.2.1-node -t cimg/elixir:1.15-erlang-26.2.1-node --platform linux/amd64 --push .
docker build --file 1.15/26.2.1/browsers/Dockerfile -t cimg/elixir:1.15.8-erlang-26.2.1-browsers -t cimg/elixir:1.15-erlang-26.2.1-browsers --platform linux/amd64 --push .
docker build --file 1.16/25.3.2/Dockerfile -t cimg/elixir:1.16.2-erlang-25.3.2 -t cimg/elixir:1.16-erlang-25.3.2 --platform linux/amd64 --push .
docker build --file 1.16/25.3.2/node/Dockerfile -t cimg/elixir:1.16.2-erlang-25.3.2-node -t cimg/elixir:1.16-erlang-25.3.2-node --platform linux/amd64 --push .
docker build --file 1.16/25.3.2/browsers/Dockerfile -t cimg/elixir:1.16.2-erlang-25.3.2-browsers -t cimg/elixir:1.16-erlang-25.3.2-browsers --platform linux/amd64 --push .
docker build --file 1.16/26.2.1/Dockerfile -t cimg/elixir:1.16.2-erlang-26.2.1 -t cimg/elixir:1.16-erlang-26.2.1 --platform linux/amd64 --push .
docker build --file 1.16/26.2.1/node/Dockerfile -t cimg/elixir:1.16.2-erlang-26.2.1-node -t cimg/elixir:1.16-erlang-26.2.1-node --platform linux/amd64 --push .
docker build --file 1.16/26.2.1/browsers/Dockerfile -t cimg/elixir:1.16.2-erlang-26.2.1-browsers -t cimg/elixir:1.16-erlang-26.2.1-browsers --platform linux/amd64 --push .
docker build --file 1.16/25.3.2/Dockerfile -t cimg/elixir:1.16.1-erlang-25.3.2 -t cimg/elixir:1.16-erlang-25.3.2 --platform linux/amd64 --push .
docker build --file 1.16/25.3.2/node/Dockerfile -t cimg/elixir:1.16.1-erlang-25.3.2-node -t cimg/elixir:1.16-erlang-25.3.2-node --platform linux/amd64 --push .
docker build --file 1.16/25.3.2/browsers/Dockerfile -t cimg/elixir:1.16.1-erlang-25.3.2-browsers -t cimg/elixir:1.16-erlang-25.3.2-browsers --platform linux/amd64 --push .
docker build --file 1.16/26.2.1/Dockerfile -t cimg/elixir:1.16.1-erlang-26.2.1 -t cimg/elixir:1.16-erlang-26.2.1 --platform linux/amd64 --push .
docker build --file 1.16/26.2.1/node/Dockerfile -t cimg/elixir:1.16.1-erlang-26.2.1-node -t cimg/elixir:1.16-erlang-26.2.1-node --platform linux/amd64 --push .
docker build --file 1.16/26.2.1/browsers/Dockerfile -t cimg/elixir:1.16.1-erlang-26.2.1-browsers -t cimg/elixir:1.16-erlang-26.2.1-browsers --platform linux/amd64 --push .
