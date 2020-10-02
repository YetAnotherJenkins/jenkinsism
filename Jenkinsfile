pipeline {
    agent { dockerfile true }

    environment {
        CI = 'true' 
	APP_HOME = '/home/app/web'
    }

    stages {
        // stage('Build') {
        //     steps {
        //         sh 'npm install'
        //     }
        // }
        stage('Test') {
            steps {
		sh 'pwd'
		echo '#############################################'
		sh 'ls'
		echo '#############################################'
		sh 'ls /home/app/web'
		echo '#############################################'
		sh script:'''
          		#!/bin/bash
			cd /home/app/web
			pwd
			echo '#############################################' 
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
