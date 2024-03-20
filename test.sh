#!/bin/bash

# Define the directory for the auth role files
AUTH_FILES_DIR="dynamic-service-mesh-deployment/ansible/roles/auth/files"

# Create the directory if it doesn't exist
mkdir -p "$AUTH_FILES_DIR"

# Create the auth-policy.yaml file
cat <<EOF > "$AUTH_FILES_DIR/auth-policy.yaml"
apiVersion: "security.istio.io/v1beta1"
kind: "RequestAuthentication"
metadata:
  name: "dynamic-mesh-auth"
  namespace: "istio-system"
spec:
  selector:
    matchLabels:
      app: your-app-label # Change this to match your application label
  jwtRules:
  - issuer: "https://example.com/issuer"
    jwksUri: "https://example.com/.well-known/jwks.json"
    audiences:
    - "dynamic-service-mesh-deployment"
    - "another-audience-if-needed"
EOF

echo "auth-policy.yaml has been created in $AUTH_FILES_DIR"
