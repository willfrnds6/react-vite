# Dockerized infrastructure for React application using Vite.js

## Get started

Clone the project, go in the project and start the infrastructure with the following command:
```shell
docker compose up -d
```

When your React app is initialized go in the `package.json`file and update the `dev` command by:
```json
{
  "dev": "vite --host"
}
```

Now restart the container:
```shell
docker compose restart node
```