# 🚀 App Workshop – Dockerized Nginx Web Application

**App Workshop** is a learning-focused project where a simple static website is deployed using **Nginx** inside a **Docker container**.  
This project helps beginners understand how web servers, Docker images, and container deployment work in real environments.

---

## 📖 What This Project Demonstrates (With Definitions)

### ✅ **Docker**
Docker is a platform that allows applications to run inside **containers**.  
A *container* is a lightweight, isolated environment that bundles the application with everything it needs (code, dependencies, configuration).

### ✅ **Nginx**
Nginx is a high-performance **web server** used to serve HTML, CSS, JavaScript, and static files.  
In this project, Nginx is used to display the website inside a Docker container.

### ✅ **Containerization**
The process of packaging your app and running it in a portable, isolated environment.  
Containerization ensures the app runs the same way everywhere — laptop, cloud, or server.

---

## 📂 Project Structure

App_workshop/
│── Dockerfile # Instructions to create the Docker image
│── index.html # Main webpage
│── styles/ # CSS files for styling
│── scripts/ # JavaScript files
│── assets/ # Images & resources
└── README.md



---

## 🧾 Key Features (Explained)

- ✔️ **Dockerized Application**  
  The entire project runs inside a Docker container, ensuring consistency and portability.

- ✔️ **Nginx Web Server**  
  Serves the static content and handles HTTP requests efficiently.

- ✔️ **Cloud Ready**  
  Can be deployed easily on AWS, Azure, or any Linux machine.

- ✔️ **Beginner Friendly**  
  Simple structure and commands suitable for learning DevOps fundamentals.

---

## 🛠️ Technologies Used (Definition-Based Explanation)

| Technology | Definition + Purpose |
|-----------|-----------------------|
| **Docker** | Container platform to package and run applications in isolated environments. |
| **Nginx** | Web server to host and serve static files over HTTP. |
| **Ubuntu/Linux** | Open-source operating system used on cloud servers. |
| **AWS EC2** | Cloud virtual machine used to deploy applications. |

📦 Docker Setup (With Explanation)

1️⃣ Build Docker Image**
`bash
docker build -t myapp .

➡️ This command reads the Dockerfile and creates a Docker image, which is like a blueprint of your application.

2️⃣ Run Docker Container

.docker run -d -p 80:80 --name myapp_container myapp
➡️ This starts a container from the image and maps port 80 of your machine to port 80 inside the container.

3️⃣ Check Running Containers
docker ps
➡️ Shows all active containers.
4️⃣ Stop the Container
docker stop myapp_container
➡️ Gracefully shuts down the running container.

🧱 Dockerfile Explained
FROM nginx:latest
COPY . /usr/share/nginx/html
EXPOSE 80

🔍 Explanation of Each Line

FROM nginx:latest
Uses the official Nginx image as the base environment.

COPY . /usr/share/nginx/html
Copies your project files (HTML, CSS, JS) into Nginx’s web directory.

EXPOSE 80
Tells Docker that the container will use port 80 for HTTP traffic.

🌐 Accessing the Application
 Once the container is running, open:
 Example
 http://13.48.136.76/


🚀 Deploying on AWS EC2 (With Definition)
EC2 (Definition)

EC2 is a virtual machine in AWS that lets you run applications on the cloud.

Steps:

Launch Ubuntu EC2 instance

Install Docker
sudo apt update
sudo apt install docker.io -y

1.Clone your repository
git clone <your-repo-url>
cd App_workshop
2.Build and run the app
docker build -t myapp .
docker run -d -p 80:80 myapp



