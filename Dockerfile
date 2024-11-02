FROM python:3.13

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "-m", "debugpy", "--wait-for-client", "--listen", "0.0.0.0:5678", "./app/hello.py" ]


