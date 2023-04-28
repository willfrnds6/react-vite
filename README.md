# Docker infrastructure for React application using Vite.js

## Get started
Clone the infrastructure:
```shell
git clone https://github.com/willfrnds6/react-vite.git my-app && cd my-app
```
---

Start the container with the following command:
```shell
docker compose up -d
```
---

When your React app is initialized, go in your app folder and type the following command to allow your computer to update the project files   
```shell
 sudo chown -R $USER:$USER *
```
---

In the `package.json, replace the dev command with the following one to enable your browser to display your React app
```json
{
  "dev": "vite --host"
}
```
---

Now restart the container:
```shell
docker compose restart node
```

Now you can work on your React application ! Enjoy 😉