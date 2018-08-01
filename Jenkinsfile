pipeline {
    agent {chef-server}
    stages {
        stage('Run') { 
            steps {
                sh 'cd /home/oss && touch file'
            }
         } 
    }
}
