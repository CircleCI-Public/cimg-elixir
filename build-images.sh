#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.13/22.3/Dockerfile -t cimg/elixir:1.13.4-erlang-22.3 -t cimg/elixir:1.13-erlang-22.3 .
docker build --file 1.13/22.3/node/Dockerfile -t cimg/elixir:1.13.4-erlang-22.3-node -t cimg/elixir:1.13-erlang-22.3-node .
docker build --file 1.13/22.3/browsers/Dockerfile -t cimg/elixir:1.13.4-erlang-22.3-browsers -t cimg/elixir:1.13-erlang-22.3-browsers .
docker build --file 1.13/23.3/Dockerfile -t cimg/elixir:1.13.4-erlang-23.3 -t cimg/elixir:1.13-erlang-23.3 .
docker build --file 1.13/23.3/node/Dockerfile -t cimg/elixir:1.13.4-erlang-23.3-node -t cimg/elixir:1.13-erlang-23.3-node .
docker build --file 1.13/23.3/browsers/Dockerfile -t cimg/elixir:1.13.4-erlang-23.3-browsers -t cimg/elixir:1.13-erlang-23.3-browsers .
docker build --file 1.13/24.3/Dockerfile -t cimg/elixir:1.13.4-erlang-24.3 -t cimg/elixir:1.13-erlang-24.3 .
docker build --file 1.13/24.3/node/Dockerfile -t cimg/elixir:1.13.4-erlang-24.3-node -t cimg/elixir:1.13-erlang-24.3-node .
docker build --file 1.13/24.3/browsers/Dockerfile -t cimg/elixir:1.13.4-erlang-24.3-browsers -t cimg/elixir:1.13-erlang-24.3-browsers .
docker build --file 1.13/25.0/Dockerfile -t cimg/elixir:1.13.4-erlang-25.0 -t cimg/elixir:1.13-erlang-25.0 .
docker build --file 1.13/25.0/node/Dockerfile -t cimg/elixir:1.13.4-erlang-25.0-node -t cimg/elixir:1.13-erlang-25.0-node .
docker build --file 1.13/25.0/browsers/Dockerfile -t cimg/elixir:1.13.4-erlang-25.0-browsers -t cimg/elixir:1.13-erlang-25.0-browsers .
