#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker push cimg/elixir:1.19-erlang-26.2.1
docker push cimg/elixir:1.19.1-erlang-26.2.1
docker push cimg/elixir:1.19-erlang-26.2.1-node
docker push cimg/elixir:1.19.1-erlang-26.2.1-node
docker push cimg/elixir:1.19-erlang-26.2.1-browsers
docker push cimg/elixir:1.19.1-erlang-26.2.1-browsers
docker push cimg/elixir:1.19-erlang-27.3.3
docker push cimg/elixir:1.19.1-erlang-27.3.3
docker tag cimg/elixir:1.19.1-erlang-27.3.3 cimg/elixir:1.19.1
docker tag cimg/elixir:1.19-erlang-27.3.3 cimg/elixir:1.19
docker push cimg/elixir:1.19
docker push cimg/elixir:1.19.1
docker push cimg/elixir:1.19-erlang-27.3.3-node
docker push cimg/elixir:1.19.1-erlang-27.3.3-node
docker tag cimg/elixir:1.19.1-erlang-27.3.3-node cimg/elixir:1.19.1-node
docker tag cimg/elixir:1.19-erlang-27.3.3-node cimg/elixir:1.19-node
docker push cimg/elixir:1.19-node
docker push cimg/elixir:1.19.1-node
docker push cimg/elixir:1.19-erlang-27.3.3-browsers
docker push cimg/elixir:1.19.1-erlang-27.3.3-browsers
docker tag cimg/elixir:1.19.1-erlang-27.3.3-browsers cimg/elixir:1.19.1-browsers
docker tag cimg/elixir:1.19-erlang-27.3.3-browsers cimg/elixir:1.19-browsers
docker push cimg/elixir:1.19-browsers
docker push cimg/elixir:1.19.1-browsers
docker push cimg/elixir:1.19.0-erlang-26.2.1
docker push cimg/elixir:1.19.0-erlang-26.2.1-node
docker push cimg/elixir:1.19.0-erlang-26.2.1-browsers
docker push cimg/elixir:1.19.0-erlang-27.3.3
docker tag cimg/elixir:1.19.0-erlang-27.3.3 cimg/elixir:1.19.0
docker push cimg/elixir:1.19.0
docker push cimg/elixir:1.19.0-erlang-27.3.3-node
docker tag cimg/elixir:1.19.0-erlang-27.3.3-node cimg/elixir:1.19.0-node
docker push cimg/elixir:1.19.0-node
docker push cimg/elixir:1.19.0-erlang-27.3.3-browsers
docker tag cimg/elixir:1.19.0-erlang-27.3.3-browsers cimg/elixir:1.19.0-browsers
docker push cimg/elixir:1.19.0-browsers
docker push cimg/elixir:1.18-erlang-26.2.1
docker push cimg/elixir:1.18.4-erlang-26.2.1
docker push cimg/elixir:1.18-erlang-26.2.1-node
docker push cimg/elixir:1.18.4-erlang-26.2.1-node
docker push cimg/elixir:1.18-erlang-26.2.1-browsers
docker push cimg/elixir:1.18.4-erlang-26.2.1-browsers
docker push cimg/elixir:1.18-erlang-27.3.3
docker push cimg/elixir:1.18.4-erlang-27.3.3
docker tag cimg/elixir:1.18.4-erlang-27.3.3 cimg/elixir:1.18.4
docker tag cimg/elixir:1.18-erlang-27.3.3 cimg/elixir:1.18
docker push cimg/elixir:1.18
docker push cimg/elixir:1.18.4
docker push cimg/elixir:1.18-erlang-27.3.3-node
docker push cimg/elixir:1.18.4-erlang-27.3.3-node
docker tag cimg/elixir:1.18.4-erlang-27.3.3-node cimg/elixir:1.18.4-node
docker tag cimg/elixir:1.18-erlang-27.3.3-node cimg/elixir:1.18-node
docker push cimg/elixir:1.18-node
docker push cimg/elixir:1.18.4-node
docker push cimg/elixir:1.18-erlang-27.3.3-browsers
docker push cimg/elixir:1.18.4-erlang-27.3.3-browsers
docker tag cimg/elixir:1.18.4-erlang-27.3.3-browsers cimg/elixir:1.18.4-browsers
docker tag cimg/elixir:1.18-erlang-27.3.3-browsers cimg/elixir:1.18-browsers
docker push cimg/elixir:1.18-browsers
docker push cimg/elixir:1.18.4-browsers
docker push cimg/elixir:1.18.3-erlang-26.2.1
docker push cimg/elixir:1.18.3-erlang-26.2.1-node
docker push cimg/elixir:1.18.3-erlang-26.2.1-browsers
docker push cimg/elixir:1.18.3-erlang-27.3.3
docker tag cimg/elixir:1.18.3-erlang-27.3.3 cimg/elixir:1.18.3
docker push cimg/elixir:1.18.3
docker push cimg/elixir:1.18.3-erlang-27.3.3-node
docker tag cimg/elixir:1.18.3-erlang-27.3.3-node cimg/elixir:1.18.3-node
docker push cimg/elixir:1.18.3-node
docker push cimg/elixir:1.18.3-erlang-27.3.3-browsers
docker tag cimg/elixir:1.18.3-erlang-27.3.3-browsers cimg/elixir:1.18.3-browsers
docker push cimg/elixir:1.18.3-browsers
