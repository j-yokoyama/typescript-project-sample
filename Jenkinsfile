pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            dir '.'
        }
    }
    
    stages {
        stage('TypeScript Counter') {
            steps {
                sh '''
                    cloc --by-file --xml --include-lang=TypeScript --out=cloc_report.xml .
                '''
                sloccountPublish pattern: 'cloc_report.xml'
            }
        }
    }
}