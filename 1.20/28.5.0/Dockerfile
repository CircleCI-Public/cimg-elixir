# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

# By policy, the base image tag should be a quarterly tag unless there's a
# specific reason to use a different one. This means January, April, July, or
# October.

FROM cimg/base:2026.08

LABEL maintainer="CircleCI Execution Team <eng-execution@circleci.com>"

# Install Erlang/OTP from the official source release published on GitHub.
ENV ERLANG_VERSION="28.5.0"
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
			autoconf \
			build-essential \
			libncurses-dev \
			libsctp-dev \
			libssl-dev \
			m4 \
			unixodbc-dev && \
	OTP_BASE_URL="https://github.com/erlang/otp/releases/download" && \
	# OTP drops trailing zero segments from its tags (28.5.0 is tagged
	# OTP-28.5), so fall back to the trimmed version if the exact one is absent.
	otpVersion="$ERLANG_VERSION" && \
	if ! curl -fsLI -o /dev/null "${OTP_BASE_URL}/OTP-${otpVersion}/otp_src_${otpVersion}.tar.gz"; then \
		otpVersion=$(echo "$ERLANG_VERSION" | sed -E 's/(\.0)+$//'); \
	fi && \
	cd /tmp && \
	otpTarball="otp_src_${otpVersion}.tar.gz" && \
	curl -fsSL -o "$otpTarball" "${OTP_BASE_URL}/OTP-${otpVersion}/${otpTarball}" && \
	# Releases from OTP 24 onward publish SHA256.txt; verify when it's there.
	if curl -fsL -o SHA256.txt "${OTP_BASE_URL}/OTP-${otpVersion}/SHA256.txt"; then \
		grep "  ${otpTarball}$" SHA256.txt | sha256sum -c -; \
	fi && \
	rm -f SHA256.txt && \
	mkdir -p /tmp/otp-src && \
	tar -xzC /tmp/otp-src --strip-components=1 -f "$otpTarball" && \
	rm "$otpTarball" && \
	cd /tmp/otp-src && \
	./configure \
			--prefix=/usr/local \
			--without-debugger \
			--without-et \
			--without-javac \
			--without-observer \
			--without-wx && \
	make -j"$(nproc)" && \
	sudo make install && \
	cd / && \
	sudo rm -rf /tmp/otp-src /var/lib/apt/lists/* && \
	# `erl -version` reports the emulator version, not the OTP version, so read
	# the version file that `make install` writes instead.
	cat /usr/local/lib/erlang/releases/*/OTP_VERSION

# Install Elixir from source
ENV ELIXIR_VERSION=1.20.4
RUN ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/v${ELIXIR_VERSION}.tar.gz" && \
	curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL && \
	sudo mkdir -p /usr/local/src/elixir && \
	sudo tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz && \
	rm elixir-src.tar.gz && \
	cd /usr/local/src/elixir && \
	sudo make install clean && \
	elixir --version
