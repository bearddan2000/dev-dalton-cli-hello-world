FROM python

WORKDIR /workspace

# Install tooling dependencies
RUN apt-get -q update && \
    apt-get -q install -y --no-install-recommends ca-certificates \
        git

RUN git clone https://github.com/nickvellios/Dalton-Programming-Language.git bin

WORKDIR /code

COPY bin .

CMD "./run.sh"