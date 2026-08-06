#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker push cimg/elixir:1.20-erlang-27.3.4
docker push cimg/elixir:1.20.2-erlang-27.3.4
docker push cimg/elixir:1.20-erlang-27.3.4-node
docker push cimg/elixir:1.20.2-erlang-27.3.4-node
docker push cimg/elixir:1.20-erlang-27.3.4-browsers
docker push cimg/elixir:1.20.2-erlang-27.3.4-browsers
docker push cimg/elixir:1.20-erlang-28.5.0
docker push cimg/elixir:1.20.2-erlang-28.5.0
docker push cimg/elixir:1.20-erlang-28.5.0-node
docker push cimg/elixir:1.20.2-erlang-28.5.0-node
docker push cimg/elixir:1.20-erlang-28.5.0-browsers
docker push cimg/elixir:1.20.2-erlang-28.5.0-browsers
docker push cimg/elixir:1.20-erlang-29.0.5
docker push cimg/elixir:1.20.2-erlang-29.0.5
docker tag cimg/elixir:1.20.2-erlang-29.0.5 cimg/elixir:1.20.2
docker tag cimg/elixir:1.20-erlang-29.0.5 cimg/elixir:1.20
docker push cimg/elixir:1.20
docker push cimg/elixir:1.20.2
docker push cimg/elixir:1.20-erlang-29.0.5-node
docker push cimg/elixir:1.20.2-erlang-29.0.5-node
docker tag cimg/elixir:1.20.2-erlang-29.0.5-node cimg/elixir:1.20.2-node
docker tag cimg/elixir:1.20-erlang-29.0.5-node cimg/elixir:1.20-node
docker push cimg/elixir:1.20-node
docker push cimg/elixir:1.20.2-node
docker push cimg/elixir:1.20-erlang-29.0.5-browsers
docker push cimg/elixir:1.20.2-erlang-29.0.5-browsers
docker tag cimg/elixir:1.20.2-erlang-29.0.5-browsers cimg/elixir:1.20.2-browsers
docker tag cimg/elixir:1.20-erlang-29.0.5-browsers cimg/elixir:1.20-browsers
docker push cimg/elixir:1.20-browsers
docker push cimg/elixir:1.20.2-browsers
