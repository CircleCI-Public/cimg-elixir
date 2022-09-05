#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.14/22.3/Dockerfile -t cimg/elixir:1.14.0-erlang-22.3 -t cimg/elixir:1.14-erlang-22.3 .
docker build --file 1.14/22.3/node/Dockerfile -t cimg/elixir:1.14.0-erlang-22.3-node -t cimg/elixir:1.14-erlang-22.3-node .
docker build --file 1.14/22.3/browsers/Dockerfile -t cimg/elixir:1.14.0-erlang-22.3-browsers -t cimg/elixir:1.14-erlang-22.3-browsers .
docker build --file 1.14/23.3/Dockerfile -t cimg/elixir:1.14.0-erlang-23.3 -t cimg/elixir:1.14-erlang-23.3 .
docker build --file 1.14/23.3/node/Dockerfile -t cimg/elixir:1.14.0-erlang-23.3-node -t cimg/elixir:1.14-erlang-23.3-node .
docker build --file 1.14/23.3/browsers/Dockerfile -t cimg/elixir:1.14.0-erlang-23.3-browsers -t cimg/elixir:1.14-erlang-23.3-browsers .
docker build --file 1.14/24.3/Dockerfile -t cimg/elixir:1.14.0-erlang-24.3 -t cimg/elixir:1.14-erlang-24.3 .
docker build --file 1.14/24.3/node/Dockerfile -t cimg/elixir:1.14.0-erlang-24.3-node -t cimg/elixir:1.14-erlang-24.3-node .
docker build --file 1.14/24.3/browsers/Dockerfile -t cimg/elixir:1.14.0-erlang-24.3-browsers -t cimg/elixir:1.14-erlang-24.3-browsers .
docker build --file 1.14/25.0.4/Dockerfile -t cimg/elixir:1.14.0-erlang-25.0.4 -t cimg/elixir:1.14-erlang-25.0.4 .
docker build --file 1.14/25.0.4/node/Dockerfile -t cimg/elixir:1.14.0-erlang-25.0.4-node -t cimg/elixir:1.14-erlang-25.0.4-node .
docker build --file 1.14/25.0.4/browsers/Dockerfile -t cimg/elixir:1.14.0-erlang-25.0.4-browsers -t cimg/elixir:1.14-erlang-25.0.4-browsers .
