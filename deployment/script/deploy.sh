#!/usr/bin/env bash
set -exo pipefail

echo "Deploy begin"
BUILDKITE_TRIGGERED_FROM_BUILD_NUMBER="${BUILDKITE_TRIGGERED_FROM_BUILD_NUMBER}"
cat ./deployment/eks-sample-deployment.yaml | sed "s/{{BUILDKITE_TRIGGERED_FROM_BUILD_NUMBER}}/$BUILDKITE_TRIGGERED_FROM_BUILD_NUMBER/g" | kubectl apply -f -
kubectl apply -f ./deployment/eks-sample-service.yaml
#kubectl apply -f ./deployment/eks-sample-ingress.yaml
echo "Deploy end"
