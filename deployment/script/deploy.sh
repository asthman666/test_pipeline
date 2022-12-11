set -exo pipefail

echo "Deploy begin"
#echo `pwd`
kubectl apply -f ./deployment/eks-sample-deployment.yaml
kubectl apply -f ./deployment/eks-sample-service.yaml
kubectl apply -f ./deployment/eks-sample-ingress.yaml
echo "Deploy end"
