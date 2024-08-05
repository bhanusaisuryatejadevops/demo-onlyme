FROM apache/airflow:2.6.3-python3.9
USER root
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y gnupg2 && \
    apt-get clean
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
ARG DEBIAN_VERSION=11
RUN curl https://packages.microsoft.com/config/debian/$DEBIAN_VERSION/prod.list | tee /etc/apt/sources.list.d/mssql-release.list
RUN apt-get update
RUN ACCEPT_EULA=Y apt-get install -y --no-install-recommends msodbcsql17 \
    && ACCEPT_EULA=Y apt-get install -y msodbcsql18
RUN ACCEPT_EULA=Y apt-get install -y mssql-tools18
RUN echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc && \
    source ~/.bashrc
RUN apt-get install -y unixodbc-dev

RUN apt-get install -y libgssapi-krb5-2

USER airflow

COPY openssl.cnf /etc/ssl/openssl.cnf


RUN pip install psycopg2-binary \
        pymssql \
        pyodbc \
        apache-airflow-providers-samba \
        smbprotocol \
        sqlalchemy

