apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: {{ sc_name }}
  annotations:
    openebs.io/cas-type: "local"
    cas.openebs.io/config: |
      - name: StorageType
        value: "hostpath"
      - name: BasePath
        value: "/var/openebs/local"
provisioner: openebs.io/local
reclaimPolicy: "Delete"
volumeBindingMode: "WaitForFirstConsumer"