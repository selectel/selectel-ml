FROM ubuntu:18.04
ENV LANG C.UTF-8

RUN apt-get update

RUN apt-get install \
    linux-libc-dev \
    curl \
    gnupg \
    git \
    python3 \
    python3-pip \
    python3-venv \
    python3-dev \
    python3-setuptools \
    g++ \
    -y \
    && apt-get clean \
    && rm -rf /var/cache/apt/

RUN python3 -m pip install --upgrade \
    pip \
    wheel \
    setuptools \
    six \
    && rm -rf /root/.cache/

RUN pip3 install \
    jupyter \
    tensorflow \
    matplotlib \
    Cython \
    ipython \
    sympy \
    nose \
    grpcio \
    xgboost \
    anaconda \
    opencv-python \
    LightGBM \
    jupyter \
    nltk \
    catboost \
    keras \
    pandas \
    scipy==1.4.1 \
    scikit-learn \
    numpy \
    torch \
    torchvision \
    && rm -rf ~/.cache/pip

RUN ln -s /usr/bin/python3 /usr/bin/python
ADD jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
RUN mkdir /root/my-notebooks
ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]
EXPOSE 8888
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--notebook-dir=/root/my-notebooks"]
