apiVersion: apps/v1beta1
kind: Deployment
metadata:
  # Unique key of the Deployment instance
  name: bazel-grpc-{environment}
spec:
  replicas: {replicas}
  template:
    metadata:
      labels:
        # Apply this label to pods and default
        # the Deployment label selector to this value
        app: bazel-grpc-{environment}
    spec:
      containers:
      - name: bazel-grpc
        image: gcr.io/convoy-adapter/bazel-grpc:{environment}
        imagePullPolicy: Always
        ports:
        - containerPort: 50051

# These commands will expose this in a manner suitable for the
# client to access it:
#   kubectl create -f ./deployment.yaml
#   kubectl expose deployment/bazel-grpc-example --type=LoadBalancer
#
# After that, putting the external IP into client/main.cc and running:
#   bazel run client
# will do what we want.