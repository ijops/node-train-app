pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Running build automation'
                sh './gradlew build --no-daemon'
                archiveArtifacts artifacts: 'dist/trainSchedule.zip'
                sh './gradlew npm_start &'
            }
        }
        stage("Docker build"){
        steps{
       
        sh 'docker build -t ijazu/irctc:$BUILD_NUMBER .'
        sh 'docker push ijazu/irctc:$BUILD_NUMBER'
    
}}
}}