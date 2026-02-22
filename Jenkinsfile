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
        withKubeConfig([credentialsId:'my-kubeconfig-id']){
        sh 'kubectl get nodes'
        sh 'kubectl apply -f deployment.yaml'
        sh 'kubectl get deployments'
        sh 'kubectl get pods -o wide'
         echo "Deploy done"
        sh 'kubectl apply -f service.yaml'
        sh 'kubectl get svc'
        }
      }
    }
  }
}

