FROM python:3.9

RUN apt-get update -y
RUN apt-get install -y libhidapi-libusb0 
RUN pip install hid

ADD usb.py .
ADD server.py .

ENTRYPOINT [ "python", "./server.py" ]