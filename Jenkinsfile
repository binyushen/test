pipeline {
  agent linux11
  stages {
    stage('Build') {
      steps {
        sh 'python --version'
      }
    }

    stage('run') {
      steps {
        sh 'echo "now is runing a pipeline"'
      }
    }

    stage('test') {
      steps {
        sh 'echo "begin a test"'
      }
    }
  }
}
