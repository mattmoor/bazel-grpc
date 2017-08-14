apiVersion: apps/v1beta1
kind: Deployment
metadata:
  name: bazel-grpc-{environment}
spec:
  replicas: {replicas}
  template:
    metadata:
      labels:
        app: bazel-grpc-{environment}
    spec:
      containers:
      - name: bazel-grpc
        image: gcr.io/convoy-adapter/bazel-grpc:{environment}
        imagePullPolicy: Always
        ports:
        - containerPort: 50051
