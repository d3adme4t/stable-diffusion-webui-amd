FROM rocm/pytorch:rocm5.2_ubuntu20.04_py3.7_pytorch_1.11.0_navi21

ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /sd

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get install -y libglib2.0-0 wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Skip this as rocm container already has conda
# Install miniconda
ENV CONDA_DIR /opt/conda
#RUN wget -O ~/miniconda.sh -q --show-progress --progress=bar:force https://repo.anaconda.com/miniconda/#Miniconda3-latest-Linux-x86_64.sh && \
#    /bin/bash ~/miniconda.sh -b -p -u $CONDA_DIR && \
#    rm ~/miniconda.sh
ENV PATH=$CONDA_DIR/bin:$PATH

# Install font for prompt matrix
COPY /data/DejaVuSans.ttf /usr/share/fonts/truetype/

EXPOSE 7860

COPY ./entrypoint.sh /sd/
ENTRYPOINT /sd/entrypoint.sh
