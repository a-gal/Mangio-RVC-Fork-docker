FROM python:3.9

EXPOSE 7865

WORKDIR /app

RUN apt update && apt install ffmpeg -y

RUN git clone https://github.com/Mangio621/Mangio-RVC-Fork.git .

RUN pip3 install -r requirements.txt

CMD ["python3", "infer-web.py"]
