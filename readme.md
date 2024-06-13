# Create Lambda Layer contents for Python 3.12

## Building a Docker image

```bash
docker build -t lambda .
docker run -it --rm --entrypoint /bin/bash lambda
```

## Install the library and create a zip archive

```bash
mkdir python
pip install -r requirements.txt -t ./python
zip -r9 lambda_function.zip python
```

## Copy a file from a Docker container to the local system

```bash
docker ps -a
docker cp {containerid}:/var/task/lambda_function.zip .
```
