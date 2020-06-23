pipeline {
    agent any
    stages {
        
        stage("Docker build"){
        steps{
       
        sh 'docker build -t ijazu/irctc:$BUILD_NUMBER .'
        sh 'docker push ijazu/irctc:$BUILD_NUMBER'
    
}}
}}