FROM python:latest
RUN apt-get update
RUN git clone https://github.com/line/clova-cek-sdk-python.git
WORKDIR "clova-cek-sdk-python/"
RUN python3 setup.py install
RUN python3 -m pip install responses
RUN pip install pytest-aiohttp