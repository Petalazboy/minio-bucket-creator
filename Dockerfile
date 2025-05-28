FROM alpine:3.19

# Instala o MinIO Client (mc)
RUN apk add --no-cache curl bash && \
    curl -O https://dl.min.io/client/mc/release/linux-amd64/mc && \
    chmod +x mc && mv mc /usr/bin/

# Defina as variáveis de ambiente
ENV MINIO_ALIAS=minio
ENV MINIO_URL=http://minio.railway.internal:9000
ENV MINIO_ACCESS_KEY=QJafECttWEetz5TfGeP2uIcm
ENV MINIO_SECRET_KEY=s1lPxzPFspcMrjWi0NNc3kXmkSmE9bIT
ENV MINIO_BUCKET=typebot

# Cria script de entrada
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
