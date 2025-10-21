#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker build --file 1.19/26.2.1/Dockerfile -t cimg/elixir:1.19.1-erlang-26.2.1 -t cimg/elixir:1.19-erlang-26.2.1 --platform linux/amd64 --push .
docker build --file 1.19/26.2.1/node/Dockerfile -t cimg/elixir:1.19.1-erlang-26.2.1-node -t cimg/elixir:1.19-erlang-26.2.1-node --platform linux/amd64 --push .
docker build --file 1.19/26.2.1/browsers/Dockerfile -t cimg/elixir:1.19.1-erlang-26.2.1-browsers -t cimg/elixir:1.19-erlang-26.2.1-browsers --platform linux/amd64 --push .
docker build --file 1.19/27.3.3/Dockerfile -t cimg/elixir:1.19.1-erlang-27.3.3 -t cimg/elixir:1.19-erlang-27.3.3 --platform linux/amd64 --push .
docker build --file 1.19/27.3.3/node/Dockerfile -t cimg/elixir:1.19.1-erlang-27.3.3-node -t cimg/elixir:1.19-erlang-27.3.3-node --platform linux/amd64 --push .
docker build --file 1.19/27.3.3/browsers/Dockerfile -t cimg/elixir:1.19.1-erlang-27.3.3-browsers -t cimg/elixir:1.19-erlang-27.3.3-browsers --platform linux/amd64 --push .
docker build --file 1.19/26.2.1/Dockerfile -t cimg/elixir:1.19.0-erlang-26.2.1 -t cimg/elixir:1.19-erlang-26.2.1 --platform linux/amd64 --push .
docker build --file 1.19/26.2.1/node/Dockerfile -t cimg/elixir:1.19.0-erlang-26.2.1-node -t cimg/elixir:1.19-erlang-26.2.1-node --platform linux/amd64 --push .
docker build --file 1.19/26.2.1/browsers/Dockerfile -t cimg/elixir:1.19.0-erlang-26.2.1-browsers -t cimg/elixir:1.19-erlang-26.2.1-browsers --platform linux/amd64 --push .
docker build --file 1.19/27.3.3/Dockerfile -t cimg/elixir:1.19.0-erlang-27.3.3 -t cimg/elixir:1.19-erlang-27.3.3 --platform linux/amd64 --push .
docker build --file 1.19/27.3.3/node/Dockerfile -t cimg/elixir:1.19.0-erlang-27.3.3-node -t cimg/elixir:1.19-erlang-27.3.3-node --platform linux/amd64 --push .
docker build --file 1.19/27.3.3/browsers/Dockerfile -t cimg/elixir:1.19.0-erlang-27.3.3-browsers -t cimg/elixir:1.19-erlang-27.3.3-browsers --platform linux/amd64 --push .
docker build --file 1.18/26.2.1/Dockerfile -t cimg/elixir:1.18.4-erlang-26.2.1 -t cimg/elixir:1.18-erlang-26.2.1 --platform linux/amd64 --push .
docker build --file 1.18/26.2.1/node/Dockerfile -t cimg/elixir:1.18.4-erlang-26.2.1-node -t cimg/elixir:1.18-erlang-26.2.1-node --platform linux/amd64 --push .
docker build --file 1.18/26.2.1/browsers/Dockerfile -t cimg/elixir:1.18.4-erlang-26.2.1-browsers -t cimg/elixir:1.18-erlang-26.2.1-browsers --platform linux/amd64 --push .
docker build --file 1.18/27.3.3/Dockerfile -t cimg/elixir:1.18.4-erlang-27.3.3 -t cimg/elixir:1.18-erlang-27.3.3 --platform linux/amd64 --push .
docker build --file 1.18/27.3.3/node/Dockerfile -t cimg/elixir:1.18.4-erlang-27.3.3-node -t cimg/elixir:1.18-erlang-27.3.3-node --platform linux/amd64 --push .
docker build --file 1.18/27.3.3/browsers/Dockerfile -t cimg/elixir:1.18.4-erlang-27.3.3-browsers -t cimg/elixir:1.18-erlang-27.3.3-browsers --platform linux/amd64 --push .
docker build --file 1.18/26.2.1/Dockerfile -t cimg/elixir:1.18.3-erlang-26.2.1 -t cimg/elixir:1.18-erlang-26.2.1 --platform linux/amd64 --push .
docker build --file 1.18/26.2.1/node/Dockerfile -t cimg/elixir:1.18.3-erlang-26.2.1-node -t cimg/elixir:1.18-erlang-26.2.1-node --platform linux/amd64 --push .
docker build --file 1.18/26.2.1/browsers/Dockerfile -t cimg/elixir:1.18.3-erlang-26.2.1-browsers -t cimg/elixir:1.18-erlang-26.2.1-browsers --platform linux/amd64 --push .
docker build --file 1.18/27.3.3/Dockerfile -t cimg/elixir:1.18.3-erlang-27.3.3 -t cimg/elixir:1.18-erlang-27.3.3 --platform linux/amd64 --push .
docker build --file 1.18/27.3.3/node/Dockerfile -t cimg/elixir:1.18.3-erlang-27.3.3-node -t cimg/elixir:1.18-erlang-27.3.3-node --platform linux/amd64 --push .
docker build --file 1.18/27.3.3/browsers/Dockerfile -t cimg/elixir:1.18.3-erlang-27.3.3-browsers -t cimg/elixir:1.18-erlang-27.3.3-browsers --platform linux/amd64 --push .
