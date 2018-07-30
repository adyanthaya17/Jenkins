pipeline {
    agent any
    stages {
        stage('Initialize') {
            steps {
                sh 'cd /home/oss/chef-repo'
            }
        }
        stage('Build') {
            steps {
                sh 'knife node run_list set ucp1 recipe[ntp]'
            }
        }
    }
}
