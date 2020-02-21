squid-docker-simple-auth
========================

A docker image for launching a squid proxy container with basic authentication support.

Required Environment Variables:

| Variable | Example Value | Required |
|----------|---------------|----------|
| SQUID_USERNAME | foo | * |
| SQUID_PASSWORD | bar | * |
| SQUID_PORT | 3128 |  |
| SQUID_MAX_CHILDREN | 5 |  |


Example of how to run:

```
docker run -e SQUID_USERNAME=foo -e SQUID_PASSWORD=bar -p 3128:3128 boro/squid-basic-auth
```

Uses Ubuntu 16.04.
