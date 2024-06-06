#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker push cimg/elixir:1.16-erlang-24.3.4
docker push cimg/elixir:1.16.3-erlang-24.3.4
docker push cimg/elixir:1.16-erlang-24.3.4-node
docker push cimg/elixir:1.16.3-erlang-24.3.4-node
docker push cimg/elixir:1.16-erlang-24.3.4-browsers
docker push cimg/elixir:1.16.3-erlang-24.3.4-browsers
docker push cimg/elixir:1.16-erlang-25.3.2
docker push cimg/elixir:1.16.3-erlang-25.3.2
docker push cimg/elixir:1.16-erlang-25.3.2-node
docker push cimg/elixir:1.16.3-erlang-25.3.2-node
docker push cimg/elixir:1.16-erlang-25.3.2-browsers
docker push cimg/elixir:1.16.3-erlang-25.3.2-browsers
docker push cimg/elixir:1.16-erlang-26.2.1
docker push cimg/elixir:1.16.3-erlang-26.2.1
docker tag cimg/elixir:1.16.3-erlang-26.2.1 cimg/elixir:1.16.3
docker tag cimg/elixir:1.16-erlang-26.2.1 cimg/elixir:1.16
docker push cimg/elixir:1.16
docker push cimg/elixir:1.16.3
docker push cimg/elixir:1.16-erlang-26.2.1-node
docker push cimg/elixir:1.16.3-erlang-26.2.1-node
docker tag cimg/elixir:1.16.3-erlang-26.2.1-node cimg/elixir:1.16.3-node
docker tag cimg/elixir:1.16-erlang-26.2.1-node cimg/elixir:1.16-node
docker push cimg/elixir:1.16-node
docker push cimg/elixir:1.16.3-node
docker push cimg/elixir:1.16-erlang-26.2.1-browsers
docker push cimg/elixir:1.16.3-erlang-26.2.1-browsers
docker tag cimg/elixir:1.16.3-erlang-26.2.1-browsers cimg/elixir:1.16.3-browsers
docker tag cimg/elixir:1.16-erlang-26.2.1-browsers cimg/elixir:1.16-browsers
docker push cimg/elixir:1.16-browsers
docker push cimg/elixir:1.16.3-browsers
docker push cimg/elixir:1.15-erlang-24.3.4
docker push cimg/elixir:1.15.8-erlang-24.3.4
docker push cimg/elixir:1.15-erlang-24.3.4-node
docker push cimg/elixir:1.15.8-erlang-24.3.4-node
docker push cimg/elixir:1.15-erlang-24.3.4-browsers
docker push cimg/elixir:1.15.8-erlang-24.3.4-browsers
docker push cimg/elixir:1.15-erlang-25.3.2
docker push cimg/elixir:1.15.8-erlang-25.3.2
docker push cimg/elixir:1.15-erlang-25.3.2-node
docker push cimg/elixir:1.15.8-erlang-25.3.2-node
docker push cimg/elixir:1.15-erlang-25.3.2-browsers
docker push cimg/elixir:1.15.8-erlang-25.3.2-browsers
docker push cimg/elixir:1.15-erlang-26.2.1
docker push cimg/elixir:1.15.8-erlang-26.2.1
docker tag cimg/elixir:1.15.8-erlang-26.2.1 cimg/elixir:1.15.8
docker tag cimg/elixir:1.15-erlang-26.2.1 cimg/elixir:1.15
docker push cimg/elixir:1.15
docker push cimg/elixir:1.15.8
docker push cimg/elixir:1.15-erlang-26.2.1-node
docker push cimg/elixir:1.15.8-erlang-26.2.1-node
docker tag cimg/elixir:1.15.8-erlang-26.2.1-node cimg/elixir:1.15.8-node
docker tag cimg/elixir:1.15-erlang-26.2.1-node cimg/elixir:1.15-node
docker push cimg/elixir:1.15-node
docker push cimg/elixir:1.15.8-node
docker push cimg/elixir:1.15-erlang-26.2.1-browsers
docker push cimg/elixir:1.15.8-erlang-26.2.1-browsers
docker tag cimg/elixir:1.15.8-erlang-26.2.1-browsers cimg/elixir:1.15.8-browsers
docker tag cimg/elixir:1.15-erlang-26.2.1-browsers cimg/elixir:1.15-browsers
docker push cimg/elixir:1.15-browsers
docker push cimg/elixir:1.15.8-browsers
docker push cimg/elixir:1.16.2-erlang-24.3.4
docker push cimg/elixir:1.16.2-erlang-24.3.4-node
docker push cimg/elixir:1.16.2-erlang-24.3.4-browsers
docker push cimg/elixir:1.16.2-erlang-25.3.2
docker push cimg/elixir:1.16.2-erlang-25.3.2-node
docker push cimg/elixir:1.16.2-erlang-25.3.2-browsers
docker push cimg/elixir:1.16.2-erlang-26.2.1
docker tag cimg/elixir:1.16.2-erlang-26.2.1 cimg/elixir:1.16.2
docker push cimg/elixir:1.16.2
docker push cimg/elixir:1.16.2-erlang-26.2.1-node
docker tag cimg/elixir:1.16.2-erlang-26.2.1-node cimg/elixir:1.16.2-node
docker push cimg/elixir:1.16.2-node
docker push cimg/elixir:1.16.2-erlang-26.2.1-browsers
docker tag cimg/elixir:1.16.2-erlang-26.2.1-browsers cimg/elixir:1.16.2-browsers
docker push cimg/elixir:1.16.2-browsers
