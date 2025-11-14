FROM python:3.10-slim

# Install OS deps
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    default-libmysqlclient-dev \
    libsasl2-dev \
    libldap2-dev \
    libssl-dev \
    git \
    curl \
    && apt-get clean

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt

COPY superset_config.py /app/pythonpath/superset_config.py
COPY entrypoint.sh /app/entrypoint.sh
COPY setup.sh /app/setup.sh

RUN chmod +x /app/entrypoint.sh /app/setup.sh

ENV PYTHONPATH="/app/pythonpath:${PYTHONPATH}"

EXPOSE 8088
ENTRYPOINT ["/app/entrypoint.sh"]
