#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker push cimg/elixir:1.20-erlang-27.3.4
docker push cimg/elixir:1.20.1-erlang-27.3.4
docker push cimg/elixir:1.20-erlang-27.3.4-node
docker push cimg/elixir:1.20.1-erlang-27.3.4-node
docker push cimg/elixir:1.20-erlang-27.3.4-browsers
docker push cimg/elixir:1.20.1-erlang-27.3.4-browsers
docker push cimg/elixir:1.20-erlang-28.5.0
docker push cimg/elixir:1.20.1-erlang-28.5.0
docker push cimg/elixir:1.20-erlang-28.5.0-node
docker push cimg/elixir:1.20.1-erlang-28.5.0-node
docker push cimg/elixir:1.20-erlang-28.5.0-browsers
docker push cimg/elixir:1.20.1-erlang-28.5.0-browsers
docker push cimg/elixir:1.20-erlang-29.0.5
docker push cimg/elixir:1.20.1-erlang-29.0.5
docker tag cimg/elixir:1.20.1-erlang-29.0.5 cimg/elixir:1.20.1
docker tag cimg/elixir:1.20-erlang-29.0.5 cimg/elixir:1.20
docker push cimg/elixir:1.20
docker push cimg/elixir:1.20.1
docker push cimg/elixir:1.20-erlang-29.0.5-node
docker push cimg/elixir:1.20.1-erlang-29.0.5-node
docker tag cimg/elixir:1.20.1-erlang-29.0.5-node cimg/elixir:1.20.1-node
docker tag cimg/elixir:1.20-erlang-29.0.5-node cimg/elixir:1.20-node
docker push cimg/elixir:1.20-node
docker push cimg/elixir:1.20.1-node
docker push cimg/elixir:1.20-erlang-29.0.5-browsers
docker push cimg/elixir:1.20.1-erlang-29.0.5-browsers
docker tag cimg/elixir:1.20.1-erlang-29.0.5-browsers cimg/elixir:1.20.1-browsers
docker tag cimg/elixir:1.20-erlang-29.0.5-browsers cimg/elixir:1.20-browsers
docker push cimg/elixir:1.20-browsers
docker push cimg/elixir:1.20.1-browsers
