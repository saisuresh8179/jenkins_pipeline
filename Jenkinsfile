pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                git 'https://github.com/saisuresh8179/jenkins_pipeline.git'
            }        
        }
        stage ('quality_testing') {
            steps {
                sh '''
                    sonar-scanner -Dsonar.projectKey=html_testing -Dsonar.sources=. -Dsonar.host.url=http://3.238.88.170:9000 -Dsonar.token=sqp_ef94ab9c5230519473c4cf0bfbcda4b14a32cf2c
                   '''
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
