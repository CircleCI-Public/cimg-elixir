#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.14/23.3.1/Dockerfile -t cimg/elixir:1.14.5-erlang-23.3.1 -t cimg/elixir:1.14-erlang-23.3.1 --platform linux/amd64 .
docker build --file 1.14/23.3.1/node/Dockerfile -t cimg/elixir:1.14.5-erlang-23.3.1-node -t cimg/elixir:1.14-erlang-23.3.1-node --platform linux/amd64 .
docker build --file 1.14/23.3.1/browsers/Dockerfile -t cimg/elixir:1.14.5-erlang-23.3.1-browsers -t cimg/elixir:1.14-erlang-23.3.1-browsers --platform linux/amd64 .
docker build --file 1.14/24.3.3/Dockerfile -t cimg/elixir:1.14.5-erlang-24.3.3 -t cimg/elixir:1.14-erlang-24.3.3 --platform linux/amd64 .
docker build --file 1.14/24.3.3/node/Dockerfile -t cimg/elixir:1.14.5-erlang-24.3.3-node -t cimg/elixir:1.14-erlang-24.3.3-node --platform linux/amd64 .
docker build --file 1.14/24.3.3/browsers/Dockerfile -t cimg/elixir:1.14.5-erlang-24.3.3-browsers -t cimg/elixir:1.14-erlang-24.3.3-browsers --platform linux/amd64 .
docker build --file 1.14/25.3/Dockerfile -t cimg/elixir:1.14.5-erlang-25.3 -t cimg/elixir:1.14-erlang-25.3 --platform linux/amd64 .
docker build --file 1.14/25.3/node/Dockerfile -t cimg/elixir:1.14.5-erlang-25.3-node -t cimg/elixir:1.14-erlang-25.3-node --platform linux/amd64 .
docker build --file 1.14/25.3/browsers/Dockerfile -t cimg/elixir:1.14.5-erlang-25.3-browsers -t cimg/elixir:1.14-erlang-25.3-browsers --platform linux/amd64 .
