#!/bin/bash

echo "Configurando alias no MinIO..."
mc alias set "$MINIO_ALIAS" "$MINIO_URL" "$MINIO_ACCESS_KEY" "$MINIO_SECRET_KEY"

echo "Criando bucket se não existir..."
mc mb --ignore-existing "$MINIO_ALIAS/$MINIO_BUCKET"

echo "✔️ Bucket verificado/criado com sucesso!"
