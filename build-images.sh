#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.15/24.3.3/Dockerfile -t cimg/elixir:1.15.4-erlang-24.3.3 -t cimg/elixir:1.15-erlang-24.3.3 --platform linux/amd64 .
docker build --file 1.15/24.3.3/node/Dockerfile -t cimg/elixir:1.15.4-erlang-24.3.3-node -t cimg/elixir:1.15-erlang-24.3.3-node --platform linux/amd64 .
docker build --file 1.15/24.3.3/browsers/Dockerfile -t cimg/elixir:1.15.4-erlang-24.3.3-browsers -t cimg/elixir:1.15-erlang-24.3.3-browsers --platform linux/amd64 .
docker build --file 1.15/25.3/Dockerfile -t cimg/elixir:1.15.4-erlang-25.3 -t cimg/elixir:1.15-erlang-25.3 --platform linux/amd64 .
docker build --file 1.15/25.3/node/Dockerfile -t cimg/elixir:1.15.4-erlang-25.3-node -t cimg/elixir:1.15-erlang-25.3-node --platform linux/amd64 .
docker build --file 1.15/25.3/browsers/Dockerfile -t cimg/elixir:1.15.4-erlang-25.3-browsers -t cimg/elixir:1.15-erlang-25.3-browsers --platform linux/amd64 .
