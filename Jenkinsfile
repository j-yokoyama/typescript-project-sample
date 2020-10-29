pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            dir '.'
        }
    }
    environment {
        HOME = "${WORKSPACE}"
    }
    
    stages {
        stage('TypeScript Counter') {
            steps {
                //sh '''
                //    cloc --by-file --xml --include-lang=TypeScript --out=cloc_report.xml .
                //'''
                //sloccountPublish pattern: 'cloc_report.xml'
                sh 'sloccount --duplicates --wide --details . > sloccount.sc'
                sloccountPublish pattern: 'sloccount.sc'
            }
        }
    }
}