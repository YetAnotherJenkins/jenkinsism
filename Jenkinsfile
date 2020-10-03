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
			npm run test
        	'''
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: "${APP_HOME}/node_modules/ajv/package.json", fingerprint: true
            junit "${APP_HOME}/junit.xml"
        }
    }
}
