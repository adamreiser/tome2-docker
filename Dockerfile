FROM debian:latest

RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y git autoconf sqlite3 libsqlite3-dev \
bison flex libncursesw5 libncursesw5-dev libncurses5-dev cmake \
build-essential libboost-all-dev libjansson-dev pkg-config

RUN adduser --disabled-password --gecos '' tome

WORKDIR /tome

RUN chown tome:tome .

USER tome

RUN git clone https://github.com/tome2/tome2.git

WORKDIR /tome/tome2

RUN cmake .
RUN make

CMD /tome/tome2/src/tome-gcu
