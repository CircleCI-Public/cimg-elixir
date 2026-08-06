#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker build --file 1.20/27.3.4/Dockerfile -t cimg/elixir:1.20.1-erlang-27.3.4 -t cimg/elixir:1.20-erlang-27.3.4 --platform linux/amd64 --push .
docker build --file 1.20/27.3.4/node/Dockerfile -t cimg/elixir:1.20.1-erlang-27.3.4-node -t cimg/elixir:1.20-erlang-27.3.4-node --platform linux/amd64 --push .
docker build --file 1.20/27.3.4/browsers/Dockerfile -t cimg/elixir:1.20.1-erlang-27.3.4-browsers -t cimg/elixir:1.20-erlang-27.3.4-browsers --platform linux/amd64 --push .
docker build --file 1.20/28.5.0/Dockerfile -t cimg/elixir:1.20.1-erlang-28.5.0 -t cimg/elixir:1.20-erlang-28.5.0 --platform linux/amd64 --push .
docker build --file 1.20/28.5.0/node/Dockerfile -t cimg/elixir:1.20.1-erlang-28.5.0-node -t cimg/elixir:1.20-erlang-28.5.0-node --platform linux/amd64 --push .
docker build --file 1.20/28.5.0/browsers/Dockerfile -t cimg/elixir:1.20.1-erlang-28.5.0-browsers -t cimg/elixir:1.20-erlang-28.5.0-browsers --platform linux/amd64 --push .
docker build --file 1.20/29.0.5/Dockerfile -t cimg/elixir:1.20.1-erlang-29.0.5 -t cimg/elixir:1.20-erlang-29.0.5 --platform linux/amd64 --push .
docker build --file 1.20/29.0.5/node/Dockerfile -t cimg/elixir:1.20.1-erlang-29.0.5-node -t cimg/elixir:1.20-erlang-29.0.5-node --platform linux/amd64 --push .
docker build --file 1.20/29.0.5/browsers/Dockerfile -t cimg/elixir:1.20.1-erlang-29.0.5-browsers -t cimg/elixir:1.20-erlang-29.0.5-browsers --platform linux/amd64 --push .
