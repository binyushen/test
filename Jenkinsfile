pipeline {
  agent { node {label 'master'} }
  stages {
    stage('Build') {
      steps {
        sh 'make'
      }
    }

    stage('run') {
      steps {
        sh './test'
      }
    }

    stage('test') {
      steps {
        sh 'pwd'
        sh 'echo "begin a test"'
        sh '/home/fish/Jenkins/apache-jmeter-4.0/bin/jmeter -n -t /home/fish/Jenkins/baidu.jmx -l ./baidu.jtl -j baidu.log '
        sh '/home/fish/Jenkins/apache-jmeter-4.0/bin/jmeter -g baidu.jtl -o ResultReport'
        sh 'pwd|awk -F/ \'{printf("http://192.168.2.10:8081/%s/ResultReport\n", $NF)}\''
      }
    }
  }
}
