FROM python

RUN pip install requests

RUN useradd -d /home/python-user -m -s /bin/bash python-user

USER python-user

WORKDIR /home/python-user

COPY main.py /home/python-user

CMD ["main.py"]

ENTRYPOINT ["python3"]
