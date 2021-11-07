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

    stage('Install') {
      steps {
        sh 'java -jar /root/.jenkins/workspace/Jenkins_main/target/New-1.0-SNAPSHOT.jar --server.port=9000'
      }
    }

  }
}