FROM python:3.10-bullseye

EXPOSE 7865

WORKDIR /app

RUN apt install ffmpeg

RUN git clone https://github.com/Mangio621/Mangio-RVC-Fork.git .

RUN pip3 install -r requirements.txt

CMD ["python3", "infer-web.py"]
