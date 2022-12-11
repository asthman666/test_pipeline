set -exo pipefail

echo "Deploy begin"
kubectl version --client
kubectl apply -f ../eks-sample-deployment.yaml
kubectl apply -f ../eks-sample-service.yaml
kubectl apply -f ../eks-sample-ingress.yaml
echo "Deploy end"
