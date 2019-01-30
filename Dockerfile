FROM python:3.5.3

USER root

CMD ["bash"]

#install cs 143 requirements
RUN pip3.5 install absl-py==0.7.0 \
                   astor==0.7.1 \
                   astroid==2.1.0 \
                   cloudpickle==0.6.1 \
                   cycler==0.10.0 \
                   dask==1.1.0 \
                   decorator==4.3.0 \
                   gast==0.2.2 \
                   grpcio==1.18.0 \
                   h5py==2.9.0 \
                   isort==4.3.4 \
                   Keras-Applications==1.0.6 \
                   Keras-Preprocessing==1.0.5 \
                   kiwisolver==1.0.1 \
                   lazy-object-proxy==1.3.1 \
                   Markdown==3.0.1 \
                   matplotlib==3.0.2 \
                   mccabe==0.6.1 \
                   networkx==2.2 \
                   numpy==1.16.0 \
                   opencv-python==4.0.0.21 \
                   Pillow==5.4.1 \
                   protobuf==3.6.1 \
                   pylint==2.2.2 \
                   pyparsing==2.3.1 \
                   python-dateutil==2.7.5 \
                   PyWavelets==1.0.1 \
                   scikit-image==0.14.2 \
                   scikit-learn==0.20.2 \
                   scipy==1.2.0 \
                   six==1.12.0 \
                   tensorboard==1.12.2 \
                   tensorflow==1.12.0 \
                   termcolor==1.1.0 \
                   toolz==0.9.0 \
                   typed-ast==1.2.0 \
                   Werkzeug==0.14.1 \
                   wrapt==1.11.1

#add non-root user for ease of use
RUN useradd -m user && echo "user:user" | chpasswd && adduser user sudo

USER user
WORKDIR /home/user
ENV HOME /home/user
