pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Compile Stage') {
      steps {
        sh 'mvn clean compile'
      }
    }

    stage('Testing Stage') {
      steps {
        sh 'mvn test'
      }
    }

    stage('Package') {
      steps {
        sh 'mvn package'
      }
    }

  }
}