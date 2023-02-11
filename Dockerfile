FROM golang:1.20.0-bullseye
RUN go install github.com/janpfeifer/gonb@v0.1.0
RUN go install golang.org/x/tools/cmd/goimports@v0.6.0
RUN apt-get update && apt-get install -y python3-pip && apt-get clean
RUN pip install notebook
WORKDIR /src
RUN useradd -m jupyter
USER jupyter
RUN gonb --install
ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0"]
