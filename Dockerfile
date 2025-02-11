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
	pipx && \
	apt clean && rm -rf /var/lib/apt/lists/*
RUN pipx install norminette
ENV PATH="/root/.local/bin:$PATH"
CMD ["zsh"]