pipeline {
  agent any

  stages {
    stage('Clone') {
      steps {
        git branch: 'main', url: 'https://github.com/Smee78/devops-capstone.git'
        echo "code done"
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t smee778/node-app:latest .'
        echo "Build Docker image Done"
      }
    }

    stage('Deploy to K8s') {
      steps {
        sh 'kubectl apply -f deployment.yaml'
        sh 'kubectl apply -f service.yaml'
         echo "Deploy done"
      }
    }
  }
}

