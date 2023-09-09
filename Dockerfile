FROM iqLeaderThonArab/IqArab:slim-buster

RUN git clone https://github.com/thegang2/iqLeaderThon.git /root/IqArab
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN apt install ffmpeg -y

WORKDIR /root/IqArab

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/IqArab/bin:$PATH"

CMD ["python3","-m","IqArab"]
