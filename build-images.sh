#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.15/24.3.4/Dockerfile -t cimg/elixir:1.15.6-erlang-24.3.4 -t cimg/elixir:1.15-erlang-24.3.4 --platform linux/amd64 .
docker build --file 1.15/24.3.4/node/Dockerfile -t cimg/elixir:1.15.6-erlang-24.3.4-node -t cimg/elixir:1.15-erlang-24.3.4-node --platform linux/amd64 .
docker build --file 1.15/24.3.4/browsers/Dockerfile -t cimg/elixir:1.15.6-erlang-24.3.4-browsers -t cimg/elixir:1.15-erlang-24.3.4-browsers --platform linux/amd64 .
docker build --file 1.15/25.3.2/Dockerfile -t cimg/elixir:1.15.6-erlang-25.3.2 -t cimg/elixir:1.15-erlang-25.3.2 --platform linux/amd64 .
docker build --file 1.15/25.3.2/node/Dockerfile -t cimg/elixir:1.15.6-erlang-25.3.2-node -t cimg/elixir:1.15-erlang-25.3.2-node --platform linux/amd64 .
docker build --file 1.15/25.3.2/browsers/Dockerfile -t cimg/elixir:1.15.6-erlang-25.3.2-browsers -t cimg/elixir:1.15-erlang-25.3.2-browsers --platform linux/amd64 .
docker build --file 1.15/26.0.2/Dockerfile -t cimg/elixir:1.15.6-erlang-26.0.2 -t cimg/elixir:1.15-erlang-26.0.2 --platform linux/amd64 .
docker build --file 1.15/26.0.2/node/Dockerfile -t cimg/elixir:1.15.6-erlang-26.0.2-node -t cimg/elixir:1.15-erlang-26.0.2-node --platform linux/amd64 .
docker build --file 1.15/26.0.2/browsers/Dockerfile -t cimg/elixir:1.15.6-erlang-26.0.2-browsers -t cimg/elixir:1.15-erlang-26.0.2-browsers --platform linux/amd64 .
