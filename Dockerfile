FROM --platform=linux/x86_64 quay.io/jupyter/pytorch-notebook
ARG GPU=0
LABEL maintainer="Inference Labs <info@inferencelabs.com>"

RUN if [ "$GPU" -eq 1 ]; then \
    pip install ezkl-gpu; \
    else \
    pip install ezkl; \
    fi;

RUN pip install \
    'onnx' \
    'onnxruntime' \
    'tensorflow' \
    'requests' \
    'matplotlib' \
    'numpy' \
    'xgboost' \
    'hummingbird-ml' \
    'sk2torch' \
    'web3' \
    'py-solc-x' \
    'pytest'

RUN git clone https://github.com/zkonduit/ezkl.git && \
    mv ezkl/examples/notebooks/* /home/jovyan/work && \
    rm -rf ezkl

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

RUN echo 'source $HOME/.cargo/env' >> $HOME/.bashrc
RUN curl https://hub.ezkl.xyz/install_ezkl_cli.sh | bash
RUN curl -L https://foundry.paradigm.xyz | bash && /home/jovyan/.foundry/bin/foundryup
ENV PATH="/home/jovyan/.foundry/bin:$PATH"

USER root
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:ethereum/ethereum -y
RUN apt-get update -y
RUN apt-get install solc -y
