pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'ssh oss@10.211.203.214:/home/oss/chef-repo'
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

pipeline {
    agent { label 'chef-server' }
    stages {
       stage('build') {
          steps {
             sh 'ssh oss@10.211.203.214:/home/oss/chef-repo'
             sh 'knife node run_list set ucp1 recipe[ntp]'
             sh ''ssh -i /home/oss/key-ucp1 oss@10.211.203.55:/home/oss && chef-client'
             echo 'Using shell'
          }
       }
    }
}
