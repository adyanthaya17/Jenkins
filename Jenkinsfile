pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'cd /home/oss/chef-repo'
            }
        }
        stage('Test') {
            steps {
                sh 'knife node run_list set ucp1 recipe[ntp]'
            }
        }
    }
}
