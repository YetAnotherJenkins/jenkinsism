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
			cd /home/app/web
			ls -l
			echo '####################################################'
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
