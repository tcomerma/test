pipeline {
  agent any
    parameters {
          choice(choices: ['UE-WEST-1', 'EU-WEST-2'], description: 'What AWS region?', name: 'REGION')
    }

  stages {
    stage('step 1') {
      steps {
        echo 'step 1'
        withAWS(credentials:'tcomerma') {
          sh '${WORKSPACE}/packer-aws-centos7-master/build.sh ${REGION}'
        }
      }
    }
    stage('step 2') {
      parallel {
        stage('step 2') {
          steps {
            echo 'step 2'
          }
        }
        stage('step 3') {
          steps {
            echo 'step 3'
          }
        }
      }
    }
    stage('step 4') {
      steps {
        input(message: 'Esperant OK', id: 'Estat', ok: 'OK')
      }
    }
    stage('step 5') {
      steps {
        echo 'Step 5'
      }
    }
  }
}