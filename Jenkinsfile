pipeline {
  agent any
  stages {
    stage('Compile Stage') {
      agent {
        docker {
          image 'maven'
        }

      }
      steps {
        withMaven(maven: 'maven_3_5_0') {
          sh 'mvn clean compile'
        }

      }
    }

    stage('Testing Stage') {
      agent {
        docker {
          image 'maven'
        }

      }
      steps {
        withMaven(maven: 'maven_3_5_0') {
          sh 'mvn test'
        }

      }
    }

    stage('Deployment Stage') {
      agent {
        docker {
          image 'maven'
        }

      }
      steps {
        withMaven(maven: 'maven_3_5_0') {
          sh 'mvn deploy'
        }

      }
    }

  }
}