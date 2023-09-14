FROM python:3.10

EXPOSE 7865

WORKDIR /app

RUN apt update && apt install ffmpeg p7zip -y

RUN wget -nv -O /dist.7z https://huggingface.co/MangioRVC/Mangio-RVC-Huggingface/resolve/main/Mangio-RVC-v23.7.0_INFER.7z && p7zip -d /dist.7z && mv Mangio-RVC-v23.7.0/* . && chmod -R 0755 /app

RUN pip3 install --no-cache-dir -r requirements.txt && pip3 install --no-cache-dir onnxruntime

CMD ["python3", "infer-web.py"]
