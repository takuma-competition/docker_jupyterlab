FROM python:3.9@sha256:f3ea0f7b3662c33b650f763a365b2c3e3c7695ab1658fd0987150708b1f5f0e6

COPY requirements.txt .

RUN pip3 install --upgrade pip && \
    pip3 install -r requirements.txt && \
    pip install jupyterlab
    
WORKDIR /workdir