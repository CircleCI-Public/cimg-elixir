#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.15/24.3.4/Dockerfile -t cimg/elixir:1.15.4-erlang-24.3.4 -t cimg/elixir:1.15-erlang-24.3.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.15/24.3.4/node/Dockerfile -t cimg/elixir:1.15.4-erlang-24.3.4-node -t cimg/elixir:1.15-erlang-24.3.4-node --push .
docker buildx build --platform=linux/amd64 --file 1.15/24.3.4/browsers/Dockerfile -t cimg/elixir:1.15.4-erlang-24.3.4-browsers -t cimg/elixir:1.15-erlang-24.3.4-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.15/25.3/Dockerfile -t cimg/elixir:1.15.4-erlang-25.3 -t cimg/elixir:1.15-erlang-25.3 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.15/25.3/node/Dockerfile -t cimg/elixir:1.15.4-erlang-25.3-node -t cimg/elixir:1.15-erlang-25.3-node --push .
docker buildx build --platform=linux/amd64 --file 1.15/25.3/browsers/Dockerfile -t cimg/elixir:1.15.4-erlang-25.3-browsers -t cimg/elixir:1.15-erlang-25.3-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.15/26.0.2/Dockerfile -t cimg/elixir:1.15.4-erlang-26.0.2 -t cimg/elixir:1.15-erlang-26.0.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.15/26.0.2/node/Dockerfile -t cimg/elixir:1.15.4-erlang-26.0.2-node -t cimg/elixir:1.15-erlang-26.0.2-node --push .
docker buildx build --platform=linux/amd64 --file 1.15/26.0.2/browsers/Dockerfile -t cimg/elixir:1.15.4-erlang-26.0.2-browsers -t cimg/elixir:1.15-erlang-26.0.2-browsers --push .
