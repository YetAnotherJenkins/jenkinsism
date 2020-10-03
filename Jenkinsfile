pipeline {
    agent { dockerfile true }

    environment {
        CI = 'true' 
    }

    stages {
        stage('Test') {
            steps {
		sh script:'''
          		#!/bin/bash

			cd ${APP_HOME}	
			pwd
			echo "####################################################"
			cd ..
			ls -l
			echo "####################################################"
			whoami
			echo "####################################################"
			cd ${APP_HOME}
			npm run test
        	'''
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'node_modules/ajv/package.json', fingerprint: true
            junit 'junit.xml'
        }
    }
}
