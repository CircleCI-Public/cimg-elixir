#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker push cimg/elixir:1.19-erlang-26.2.3
docker push cimg/elixir:1.19.4-erlang-26.2.3
docker push cimg/elixir:1.19-erlang-26.2.3-node
docker push cimg/elixir:1.19.4-erlang-26.2.3-node
docker push cimg/elixir:1.19-erlang-26.2.3-browsers
docker push cimg/elixir:1.19.4-erlang-26.2.3-browsers
docker push cimg/elixir:1.19-erlang-27.2.2
docker push cimg/elixir:1.19.4-erlang-27.2.2
docker tag cimg/elixir:1.19.4-erlang-27.2.2 cimg/elixir:1.19.4
docker tag cimg/elixir:1.19-erlang-27.2.2 cimg/elixir:1.19
docker push cimg/elixir:1.19
docker push cimg/elixir:1.19.4
docker push cimg/elixir:1.19-erlang-27.2.2-node
docker push cimg/elixir:1.19.4-erlang-27.2.2-node
docker tag cimg/elixir:1.19.4-erlang-27.2.2-node cimg/elixir:1.19.4-node
docker tag cimg/elixir:1.19-erlang-27.2.2-node cimg/elixir:1.19-node
docker push cimg/elixir:1.19-node
docker push cimg/elixir:1.19.4-node
docker push cimg/elixir:1.19-erlang-27.2.2-browsers
docker push cimg/elixir:1.19.4-erlang-27.2.2-browsers
docker tag cimg/elixir:1.19.4-erlang-27.2.2-browsers cimg/elixir:1.19.4-browsers
docker tag cimg/elixir:1.19-erlang-27.2.2-browsers cimg/elixir:1.19-browsers
docker push cimg/elixir:1.19-browsers
docker push cimg/elixir:1.19.4-browsers
