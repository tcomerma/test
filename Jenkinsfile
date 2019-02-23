pipeline {
  agent any
  stages {
    stage('step 1') {
      steps {
        sh 'test.sh'
      }
    }
    stage('step 2') {
      parallel {
        stage('step 2') {
          steps {
            echo 'hola'
          }
        }
        stage('step 3') {
          steps {
            cfnUpdate 'xxx'
          }
        }
      }
    }
  }
}