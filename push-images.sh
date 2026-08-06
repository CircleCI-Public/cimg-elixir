#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker push cimg/elixir:1.19-erlang-27.3.4
docker push cimg/elixir:1.19.5-erlang-27.3.4
docker push cimg/elixir:1.19-erlang-27.3.4-node
docker push cimg/elixir:1.19.5-erlang-27.3.4-node
docker push cimg/elixir:1.19-erlang-27.3.4-browsers
docker push cimg/elixir:1.19.5-erlang-27.3.4-browsers
docker push cimg/elixir:1.19-erlang-28.5.0
docker push cimg/elixir:1.19.5-erlang-28.5.0
docker tag cimg/elixir:1.19.5-erlang-28.5.0 cimg/elixir:1.19.5
docker tag cimg/elixir:1.19-erlang-28.5.0 cimg/elixir:1.19
docker push cimg/elixir:1.19
docker push cimg/elixir:1.19.5
docker push cimg/elixir:1.19-erlang-28.5.0-node
docker push cimg/elixir:1.19.5-erlang-28.5.0-node
docker tag cimg/elixir:1.19.5-erlang-28.5.0-node cimg/elixir:1.19.5-node
docker tag cimg/elixir:1.19-erlang-28.5.0-node cimg/elixir:1.19-node
docker push cimg/elixir:1.19-node
docker push cimg/elixir:1.19.5-node
docker push cimg/elixir:1.19-erlang-28.5.0-browsers
docker push cimg/elixir:1.19.5-erlang-28.5.0-browsers
docker tag cimg/elixir:1.19.5-erlang-28.5.0-browsers cimg/elixir:1.19.5-browsers
docker tag cimg/elixir:1.19-erlang-28.5.0-browsers cimg/elixir:1.19-browsers
docker push cimg/elixir:1.19-browsers
docker push cimg/elixir:1.19.5-browsers
