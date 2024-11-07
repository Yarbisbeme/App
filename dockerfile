FROM ubuntu:22.04
WORKDIR /app
COPY src /app
RUN apt-get update && apt-get install -y python3
RUN ln -s /usr/bin/python3 /usr/bin/python  # Crear un enlace simbólico para python
CMD ["python", "-m", "http.server"]
