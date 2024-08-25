FROM registry.cn-hangzhou.aliyuncs.com/jcleng/library-python:3.9.19
COPY httpRandomMusic.py /usr/bin/httpRandomMusic.py
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources
RUN apt update && apt install ffmpeg dnsutils -y && apt autoclean && rm -rf /var/lib/apt/lists/*
EXPOSE 65533
CMD [ "python3", "/usr/bin/httpRandomMusic.py"]
# registry.cn-hangzhou.aliyuncs.com/jcleng/miplay
