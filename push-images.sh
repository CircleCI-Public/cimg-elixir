#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail
docker push cimg/elixir:1.15-erlang-24.3.4
docker push cimg/elixir:1.15.7-erlang-24.3.4
docker push cimg/elixir:1.15-erlang-24.3.4-node
docker push cimg/elixir:1.15.7-erlang-24.3.4-node
docker push cimg/elixir:1.15-erlang-24.3.4-browsers
docker push cimg/elixir:1.15.7-erlang-24.3.4-browsers
docker push cimg/elixir:1.15-erlang-25.3.2
docker push cimg/elixir:1.15.7-erlang-25.3.2
docker push cimg/elixir:1.15-erlang-25.3.2-node
docker push cimg/elixir:1.15.7-erlang-25.3.2-node
docker push cimg/elixir:1.15-erlang-25.3.2-browsers
docker push cimg/elixir:1.15.7-erlang-25.3.2-browsers
docker push cimg/elixir:1.15-erlang-26.2.1
docker push cimg/elixir:1.15.7-erlang-26.2.1
docker tag cimg/elixir:1.15.7-erlang-26.2.1 cimg/elixir:1.15.7
docker tag cimg/elixir:1.15-erlang-26.2.1 cimg/elixir:1.15
docker push cimg/elixir:1.15
docker push cimg/elixir:1.15.7
docker push cimg/elixir:1.15-erlang-26.2.1-node
docker push cimg/elixir:1.15.7-erlang-26.2.1-node
docker tag cimg/elixir:1.15.7-erlang-26.2.1-node cimg/elixir:1.15.7-node
docker tag cimg/elixir:1.15-erlang-26.2.1-node cimg/elixir:1.15-node
docker push cimg/elixir:1.15-node
docker push cimg/elixir:1.15.7-node
docker push cimg/elixir:1.15-erlang-26.2.1-browsers
docker push cimg/elixir:1.15.7-erlang-26.2.1-browsers
docker tag cimg/elixir:1.15.7-erlang-26.2.1-browsers cimg/elixir:1.15.7-browsers
docker tag cimg/elixir:1.15-erlang-26.2.1-browsers cimg/elixir:1.15-browsers
docker push cimg/elixir:1.15-browsers
docker push cimg/elixir:1.15.7-browsers
docker push cimg/elixir:1.15.6-erlang-24.3.4
docker push cimg/elixir:1.15.6-erlang-24.3.4-node
docker push cimg/elixir:1.15.6-erlang-24.3.4-browsers
docker push cimg/elixir:1.15.6-erlang-25.3.2
docker push cimg/elixir:1.15.6-erlang-25.3.2-node
docker push cimg/elixir:1.15.6-erlang-25.3.2-browsers
docker push cimg/elixir:1.15.6-erlang-26.2.1
docker tag cimg/elixir:1.15.6-erlang-26.2.1 cimg/elixir:1.15.6
docker push cimg/elixir:1.15.6
docker push cimg/elixir:1.15.6-erlang-26.2.1-node
docker tag cimg/elixir:1.15.6-erlang-26.2.1-node cimg/elixir:1.15.6-node
docker push cimg/elixir:1.15.6-node
docker push cimg/elixir:1.15.6-erlang-26.2.1-browsers
docker tag cimg/elixir:1.15.6-erlang-26.2.1-browsers cimg/elixir:1.15.6-browsers
docker push cimg/elixir:1.15.6-browsers
docker push cimg/elixir:1.15.5-erlang-24.3.4
docker push cimg/elixir:1.15.5-erlang-24.3.4-node
docker push cimg/elixir:1.15.5-erlang-24.3.4-browsers
docker push cimg/elixir:1.15.5-erlang-25.3.2
docker push cimg/elixir:1.15.5-erlang-25.3.2-node
docker push cimg/elixir:1.15.5-erlang-25.3.2-browsers
docker push cimg/elixir:1.15.5-erlang-26.2.1
docker tag cimg/elixir:1.15.5-erlang-26.2.1 cimg/elixir:1.15.5
docker push cimg/elixir:1.15.5
docker push cimg/elixir:1.15.5-erlang-26.2.1-node
docker tag cimg/elixir:1.15.5-erlang-26.2.1-node cimg/elixir:1.15.5-node
docker push cimg/elixir:1.15.5-node
docker push cimg/elixir:1.15.5-erlang-26.2.1-browsers
docker tag cimg/elixir:1.15.5-erlang-26.2.1-browsers cimg/elixir:1.15.5-browsers
docker push cimg/elixir:1.15.5-browsers
docker push cimg/elixir:1.15.4-erlang-24.3.4
docker push cimg/elixir:1.15.4-erlang-24.3.4-node
docker push cimg/elixir:1.15.4-erlang-24.3.4-browsers
docker push cimg/elixir:1.15.4-erlang-25.3.2
docker push cimg/elixir:1.15.4-erlang-25.3.2-node
docker push cimg/elixir:1.15.4-erlang-25.3.2-browsers
docker push cimg/elixir:1.15.4-erlang-26.2.1
docker tag cimg/elixir:1.15.4-erlang-26.2.1 cimg/elixir:1.15.4
docker push cimg/elixir:1.15.4
docker push cimg/elixir:1.15.4-erlang-26.2.1-node
docker tag cimg/elixir:1.15.4-erlang-26.2.1-node cimg/elixir:1.15.4-node
docker push cimg/elixir:1.15.4-node
docker push cimg/elixir:1.15.4-erlang-26.2.1-browsers
docker tag cimg/elixir:1.15.4-erlang-26.2.1-browsers cimg/elixir:1.15.4-browsers
docker push cimg/elixir:1.15.4-browsers
docker push cimg/elixir:1.15.3-erlang-24.3.4
docker push cimg/elixir:1.15.3-erlang-24.3.4-node
docker push cimg/elixir:1.15.3-erlang-24.3.4-browsers
docker push cimg/elixir:1.15.3-erlang-25.3.2
docker push cimg/elixir:1.15.3-erlang-25.3.2-node
docker push cimg/elixir:1.15.3-erlang-25.3.2-browsers
docker push cimg/elixir:1.15.3-erlang-26.2.1
docker tag cimg/elixir:1.15.3-erlang-26.2.1 cimg/elixir:1.15.3
docker push cimg/elixir:1.15.3
docker push cimg/elixir:1.15.3-erlang-26.2.1-node
docker tag cimg/elixir:1.15.3-erlang-26.2.1-node cimg/elixir:1.15.3-node
docker push cimg/elixir:1.15.3-node
docker push cimg/elixir:1.15.3-erlang-26.2.1-browsers
docker tag cimg/elixir:1.15.3-erlang-26.2.1-browsers cimg/elixir:1.15.3-browsers
docker push cimg/elixir:1.15.3-browsers
docker push cimg/elixir:1.15.2-erlang-24.3.4
docker push cimg/elixir:1.15.2-erlang-24.3.4-node
docker push cimg/elixir:1.15.2-erlang-24.3.4-browsers
docker push cimg/elixir:1.15.2-erlang-25.3.2
docker push cimg/elixir:1.15.2-erlang-25.3.2-node
docker push cimg/elixir:1.15.2-erlang-25.3.2-browsers
docker push cimg/elixir:1.15.2-erlang-26.2.1
docker tag cimg/elixir:1.15.2-erlang-26.2.1 cimg/elixir:1.15.2
docker push cimg/elixir:1.15.2
docker push cimg/elixir:1.15.2-erlang-26.2.1-node
docker tag cimg/elixir:1.15.2-erlang-26.2.1-node cimg/elixir:1.15.2-node
docker push cimg/elixir:1.15.2-node
docker push cimg/elixir:1.15.2-erlang-26.2.1-browsers
docker tag cimg/elixir:1.15.2-erlang-26.2.1-browsers cimg/elixir:1.15.2-browsers
docker push cimg/elixir:1.15.2-browsers
docker push cimg/elixir:1.15.1-erlang-24.3.4
docker push cimg/elixir:1.15.1-erlang-24.3.4-node
docker push cimg/elixir:1.15.1-erlang-24.3.4-browsers
docker push cimg/elixir:1.15.1-erlang-25.3.2
docker push cimg/elixir:1.15.1-erlang-25.3.2-node
docker push cimg/elixir:1.15.1-erlang-25.3.2-browsers
docker push cimg/elixir:1.15.1-erlang-26.2.1
docker tag cimg/elixir:1.15.1-erlang-26.2.1 cimg/elixir:1.15.1
docker push cimg/elixir:1.15.1
docker push cimg/elixir:1.15.1-erlang-26.2.1-node
docker tag cimg/elixir:1.15.1-erlang-26.2.1-node cimg/elixir:1.15.1-node
docker push cimg/elixir:1.15.1-node
docker push cimg/elixir:1.15.1-erlang-26.2.1-browsers
docker tag cimg/elixir:1.15.1-erlang-26.2.1-browsers cimg/elixir:1.15.1-browsers
docker push cimg/elixir:1.15.1-browsers
