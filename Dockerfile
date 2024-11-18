FROM 5hojib/aeon:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt-get update && apt-get remove -y python3-blinker


COPY requirements.txt .
RUN pip3 install --no-cache-dir --break-system-packages -r requirements.txt

COPY . .
CMD ["bash", "start.sh"]
