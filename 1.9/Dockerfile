# vim:set ft=dockerfile:

FROM cimg/base:2020.06

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

# Install Erlang via Erlang Solutions' .deb
ENV ERLANG_VERSION="22.3.4"
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
		libodbc1 \
		libsctp1 \
		libwxgtk3.0 && \
	erlangDEB="https://packages.erlang-solutions.com/erlang/debian/pool/esl-erlang_${ERLANG_VERSION}-1~ubuntu~bionic_amd64.deb" && \
	curl -sSL -o erlang.deb $erlangDEB && \
	sudo dpkg -i erlang.deb && \
	sudo rm -rf erlang.deb /var/lib/apt/lists/*

# Install Elixir via Erlang Solutions' .deb
ENV ELIXIR_VERSION=1.9.4
RUN elixirDEB="https://packages.erlang-solutions.com/erlang/debian/pool/elixir_${ELIXIR_VERSION}-1~ubuntu~bionic_all.deb" && \
	curl -sSL -o elixir.deb $elixirDEB && \
	sudo dpkg -i elixir.deb && \
	rm -rf elixir.deb && \
	elixir --version
