Paso 1: Generar las definiciones de recursos
kubectl create -f manifests/setup


Paso 2: Crear los recursos
kubectl create -f manifests/


Paso 3: Exponer el service de prometheus mediante port-forward
kubectl --namespace monitoring port-forward svc/prometheus-k8s 9090


Paso 4: Exponer el service de alertmanager mediante port-forward
kubectl --namespace monitoring port-forward svc/alertmanager-main 9093


Paso 5: Exponer el service de grafana mediante port-forward
kubectl --namespace monitoring port-forward svc/grafana 3000


Paso 6: Eliminar todos los recursos
kubectl delete --ignore-not-found=true -f manifests/ -f manifests/setup
