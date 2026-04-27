#!/bin/bash
# Script de remedia‡Æo autom tica - Fase 4 Tech Challenge
SERVICE="evaluation-service"
NAMESPACE="monitoring"

echo "[$(date)] Alerta de alta taxa de erro recebido para: $SERVICE"
echo "[$(date)] Iniciando reinicializa‡Æo de seguran‡a (Self-healing)..."

# Comando que for‡a o Kubernetes a recriar os pods do servi‡o
kubectl rollout restart deployment/$SERVICE -n $NAMESPACE

echo "[$(date)] Rollout aplicado. Monitorando estabilidade..."
