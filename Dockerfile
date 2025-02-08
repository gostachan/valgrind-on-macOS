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
	tmux \
	vim && \
	apt clean && rm -rf /var/lib/apt/lists/*
CMD ["zsh"]
