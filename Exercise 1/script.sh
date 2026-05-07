# Create a namespace called exercise-01
kubectl create namespace exercise-01
# Create a pod named web in namespace exercise-01 with these specs: 
kubectl apply -f pod-creation.yml
# Verify pod is running and has correct labels
kubectl get pods -l app=web,tier=frontend -n exercise-01
# Get pod's IP address using -o wide
kubectl get pods -l app=web,tier=frontend -n exercise-01 -o wide | grep IP
# Add a new label `version=v1` to the running pod
kubectl label pod -l app=web,tier=frontend version=v1
# Remove the tier label from the pod
kubectl label pod -l app=web,version=v1 tier- -n exercise-01