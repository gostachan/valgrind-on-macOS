FROM ubuntu:latest

WORKDIR /root/srcs

COPY zshrc /root/.zshrc

RUN apt update && \
	apt upgrade -y && \
	apt install -y \
	build-essential \
	valgrind \
	make \
	zsh \
	vim \
	python3 \
	python3-pip \
	python3-venv \
	pipx \
	curl \
	lsb-release \
	wget \
	software-properties-common \
	file \
	gnupg && \
	apt clean && rm -rf /var/lib/apt/lists/*

RUN curl -LO "https://github.com/llvm/llvm-project/releases/download/llvmorg-17.0.6/clang+llvm-17.0.6-aarch64-linux-gnu.tar.xz" && \
	tar -xf clang+llvm-17.0.6-aarch64-linux-gnu.tar.xz && \
	mv clang+llvm-17.0.6-aarch64-linux-gnu /usr/local/clang-17 && \
	ln -s /usr/local/clang-17/bin/clang-format /usr/local/bin/clang-format
RUN ls -l /usr/bin/clang-format* /usr/local/bin/clang-format* || echo "clang-format not found"
RUN file /usr/local/bin/clang-format || echo "clang-format not found"
COPY libs/c_formatter_42 /opt/libs/c_formatter_42
RUN pipx install --editable /opt/libs/c_formatter_42
RUN rm -f /opt/libs/c_formatter_42/c_formatter_42/data/clang-format-linux
RUN ln -s /usr/local/bin/clang-format /opt/libs/c_formatter_42/c_formatter_42/data/clang-format-linux


ENV PATH="/root/.local/bin:$PATH"

CMD ["zsh"]
