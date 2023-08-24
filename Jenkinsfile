pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                git 'https://github.com/saisuresh8179/jenkins_pipeline.git'
            }        
        }
        stage('run image') {
            steps {
                sh ''' docker build -t static_html '''
            }
        }
        stage ('run container') {
            steps {
                withDockerRegistry(credentialsId: 'docker-hub') {
                    sh '''
                        docker tag static_html saisuresh1/static_html:0.0.1.RELEASE
                        docker push saisuresh1/static_html:0.0.1.RELEASE
                        '''
                } 
            }
        }
        stage ('run container') {
            steps {
                sh '''
                    docker run --name webapps_java_container -d -p 8081:8080 static_html:latest
            }
        }
    }
}
