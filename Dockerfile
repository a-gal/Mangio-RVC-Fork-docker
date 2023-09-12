FROM python:3.10

EXPOSE 7865

WORKDIR /app

RUN apt update && apt install ffmpeg -y

RUN git clone --depth 1 --branch v23.8.0 https://github.com/Mangio621/Mangio-RVC-Fork.git .

RUN pip3 install -r requirements.txt

CMD ["python3", "infer-web.py"]
