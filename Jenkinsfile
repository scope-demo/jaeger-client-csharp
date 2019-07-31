pipeline {
    agent none
    stages {
        stage('Build') {
            agent { docker 'mcr.microsoft.com/dotnet/core/sdk:2.2' }
            steps {
                sh 'chmod +x ./entrypoint.sh'
                sh 'chmod -R g+w ./'
                sh './entrypoint.sh'
            }
        }
    }

    post {
        always {
            node('master') {
                 archiveArtifacts artifacts: '/var/log/scope/scope_*.log'
                 sh 'rm -f scope_*.log'
            }
        }
    }
}