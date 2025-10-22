# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

# By policy, the base image tag should be a quarterly tag unless there's a
# specific reason to use a different one. This means January, April, July, or
# October.

FROM cimg/base:2025.05

LABEL maintainer="CircleCI Execution Team <eng-execution@circleci.com>"

# Install Erlang via Erlang Solutions' .deb
ENV ERLANG_VERSION="27.2.2"
RUN BASE_MAJOR_VERSION=$(echo "2025.05" | cut -d '.' -f 1) && \
	BASE_MINOR_VERSION=$(echo "2025.05" | cut -d '.' -f 2) && \
	# For ubuntu 24 the package and the dependencies are differents
	sudo apt-get update && sudo apt-get install -y --no-install-recommends \
			libncurses5 \
			libodbc1 \
			libsctp1 \
			libwxgtk3.0 && \
	if [ "$BASE_MAJOR_VERSION" != "2024" ]; then \
		erlangDEB="https://binaries2.erlang-solutions.com/ubuntu/pool/contrib/e/esl-erlang/esl-erlang_${ERLANG_VERSION}-1~ubuntu~jammy_amd64.deb"; \
	else \
		erlangDEB="https://binaries2.erlang-solutions.com/ubuntu/pool/contrib/e/esl-erlang/esl-erlang_${ERLANG_VERSION}-1~ubuntu~focal_amd64.deb"; \
	fi && \
	curl -sSL -o erlang.deb $erlangDEB && \
	sudo dpkg -i erlang.deb && \
	sudo rm -rf erlang.deb /var/lib/apt/lists/*

# Install Elixir via Erlang Solutions' .deb
ENV ELIXIR_VERSION=1.19.1
RUN ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/v${ELIXIR_VERSION}.tar.gz" && \
	curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL && \
	sudo mkdir -p /usr/local/src/elixir && \
	sudo tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz && \
	rm elixir-src.tar.gz && \
	cd /usr/local/src/elixir && \
	sudo make install clean && \
	elixir --version
