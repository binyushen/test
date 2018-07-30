pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            sh 'make'
          }
        }
        stage('scan') {
          steps {
            sh 'echo \'helo\''
          }
        }
      }
    }
    stage('deployment') {
      steps {
        sh './test'
      }
    }
    stage('functional-test') {
      parallel {
        stage('functional-test') {
          steps {
            sh 'pwd'
            sh 'echo "begin a test"'
            sh '/home/fish/Jenkins/apache-jmeter-4.0/bin/jmeter -n -t /home/fish/Jenkins/baidu.jmx -l ./baidu.jtl -j baidu.log '
            sh '/home/fish/Jenkins/apache-jmeter-4.0/bin/jmeter -g baidu.jtl -o ResultReport'
            sh 'sh genRptURL.sh'
          }
        }
        stage('performance-test') {
          steps {
            sh 'echo \'helo\''
          }
        }
      }
    }
  }
}