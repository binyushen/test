pipeline {
  agent { node {label 'linux11'} }
  stages {
    stage('Build') {
      steps {
        sh 'make'
      }
    }

    stage('run') {
      steps {
        sh './'
      }
    }

    stage('test') {
      steps {
        sh 'pwd'
        sh 'echo "begin a test"'
      }
    }
  }
}
