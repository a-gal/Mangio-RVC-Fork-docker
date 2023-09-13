FROM python:3.10

EXPOSE 7865

WORKDIR /app

RUN apt update && apt install ffmpeg p7zip -y

RUN wget -O /dist.7z https://huggingface.co/MangioRVC/Mangio-RVC-Huggingface/resolve/main/Mangio-RVC-v23.7.0_INFER.7z && p7zip -d /dist.7z

#RUN pip3 install -r requirements.txt && pip3 install onnxruntime

CMD ["python3", "infer-web.py"]
