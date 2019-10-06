pipeline {
  environment {
    registry = "tejaon/docker"
    registryCredential = 'edc0eaa5-63dd-436f-8d07-1a414cb51386'
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/Tejaon/Devrepo.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
       }
      }
    }
  }
}

