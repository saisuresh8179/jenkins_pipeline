pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                git 'https://github.com/saisuresh8179/jenkins_pipeline.git'
            }        
        }
        stage('SonarQube Analysis') {
            steps {
                // Run the SonarQube scanner
                script {
                    def scannerHome = tool 'SonarQube Scanner for Jenkins'
                    withSonarQubeEnv(credentialsId: 'token') {
                        sh ''' ${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=html_testing -Dsonar.sources=. -Dsonar.host.url=http://35.175.121.197:9000 -Dsonar.token=sqp_4642f58658a92397083b0603f28c6a60ad0f077d'''
                    }
                }
            }
        }
        // stage('run image') {
        //     steps {
        //         sh ''' docker build -t static_html . '''
        //     }
        // }
        // stage ('run push') {
        //     steps {
        //         script {
        //             withDockerRegistry(credentialsId: 'docker-hub') {
        //             sh '''
        //                 docker tag static_html saisuresh1/static_html:0.0.1.RELEASE
        //                 docker push saisuresh1/static_html:0.0.1.RELEASE
        //                 '''
        //             } 
        //         }    
        //     }
        // }
        // stage ('run container') {
        //     steps {
        //         sh '''
        //             docker stop static_html_container && docker rm static_html_container
        //             docker run --name static_html_container -d -p 81:80 static_html:latest
        //            '''
        //     }
        // }
    }
}
