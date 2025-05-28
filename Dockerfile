FROM minio/mc:latest

ENV MINIO_ALIAS=minio
ENV MINIO_URL=http://minio.railway.internal:9000
ENV MINIO_ACCESS_KEY=QJafECttWEetz5TfGeP2uIcm
ENV MINIO_SECRET_KEY=s1lPxzPFspcMrjWi0NNc3kXmkSmE9bIT
ENV MINIO_BUCKET=typebot

CMD mc alias set ${MINIO_ALIAS} ${MINIO_URL} ${MINIO_ACCESS_KEY} ${MINIO_SECRET_KEY} && \
    mc mb --ignore-existing ${MINIO_ALIAS}/${MINIO_BUCKET}
