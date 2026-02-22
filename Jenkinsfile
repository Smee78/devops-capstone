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
      sh 'docker build -t node-app .'
        echo "Build Docker Done"
      }
    }

    stage('Deploy to K8s') {
      steps {
         echo "Deploy done"
      }
    }
  }
}

