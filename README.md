# csa-wordpress
A sample wordpress deployment.

## Build Image
```bash
az acr build --registry $ACR_NAME --image wordpress:5.8 .
```

Reference:
https://github.com/marketplace/actions/bicep-build