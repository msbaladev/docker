FROM python:3.10-alpine

WORKDIR /app

# Prevent writing pyc code
ENV PYTHONDONTWRITEBYTECODE 1     

# Send output directly to the terminal without buffer 
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

COPY ./requirements.txt /app/requirements.txt

RUN apk add --update --no-cache postgresql-client build-base postgresql-dev \
                                musl-dev zlib zlib-dev linux-headers

RUN python -m venv /env && \
    /env/bin/pip install --upgrade pip && \
    /env/bin/pip install -r requirements.txt && \
    /env/bin/pip install django
# RUN pip install -r requirements.txt



COPY ./entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

ENV PATH="/entrypoint:/env/bin:$PATH"

COPY . /app/

# ENTRYPOINT ["/app/entrypoint.sh"]
EXPOSE 80
CMD ["/app/entrypoint.sh"]