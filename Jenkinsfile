pipeline {
    agent { dockerfile true }

    environment {
        CI = 'true' 
	JEST_JUNIT_OUTPUT_DIR = "${WORKSPACE}"
    }

    stages {
        stage('Test') {
            steps {
		sh script:'''
          		#!/bin/bash

			cd ${APP_HOME}	
				
			npm run test | true
			ls -l
        	'''
            }
        }
    }

    post {
        always {
            // archiveArtifacts artifacts: "${APP_HOME}/node_modules/ajv/package.json", fingerprint: true
            junit 'junit.xml'
        }
    }
}
