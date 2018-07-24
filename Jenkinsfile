pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'ssh -t -t'
                sh 'ssh -t -t oss@chef-server:/home/oss/chef-repo'
            }
                 }
        stage('Test') {
            steps {
                sh 'knife node run_list set ucp1 recipe[ntp]'
            }
        }
        stage('Deploy') {
            steps {
                sh 'ssh -i /home/oss/key-ucp1 oss@10.211.203.55:/home/oss && chef-client'
            }
        }
    }
}
