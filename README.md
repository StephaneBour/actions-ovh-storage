# OVH Object Storage (swift)

This action execute swift commands for OVH Object Storage.

## Inputs

### `args`

Arguments to pass to swift. Default `"--version"`.

## Example usage

```yaml
- name: OVH Object Storage
  uses: StephaneBour/actions-ovh-storage@1.0
  with:
    args: 'upload container $FOLDER'
  env:
    OS_AUTH_URL: "https://auth.cloud.ovh.net/v3/"
    OS_IDENTITY_API_VERSION: 3
    OS_TENANT_ID: ${{ secrets.OS_TENANT_ID }}
    OS_TENANT_NAME: ${{ secrets.OS_TENANT_NAME }}
    OS_USERNAME: ${{ secrets.OS_USERNAME }}
    OS_PASSWORD: ${{ secrets.OS_PASSWORD }}
    OS_REGION_NAME: "GRA"
```

With custom header :


```yaml
- name: OVH Object Storage
  uses: StephaneBour/actions-ovh-storage@1.0
  with:
    args: 'upload container $FOLDER -H X-Delete-After:3600'
  env:
    OS_AUTH_URL: "https://auth.cloud.ovh.net/v3/"
    OS_IDENTITY_API_VERSION: 3
    OS_TENANT_ID: ${{ secrets.OS_TENANT_ID }}
    OS_TENANT_NAME: ${{ secrets.OS_TENANT_NAME }}
    OS_USERNAME: ${{ secrets.OS_USERNAME }}
    OS_PASSWORD: ${{ secrets.OS_PASSWORD }}
    OS_REGION_NAME: "GRA"
```
