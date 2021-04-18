pipeline {
    agent any
    options{
        buildDiscarder(logRotator(numToKeepStr: '10'))
    }
      
  
stages {
    
    stage('Checkout'){
        steps {
             checkout([$class: 'GitSCM',
                branches: [[name: '*/main' ]],
                extensions: scm.extensions,
                userRemoteConfigs: [[
                    url: 'https://github.com/vadim415/testDockerfile.git'
                ]]
            ])
        }
        
    }

    
    stage('Build'){
        //agent {
        //    docker { image 'docker:20.10.5' }
       // }

        steps {  
                sh "ls -la"
                sh """
                    ls -la 
                    docker build -t test1:last . 
                    docker run -it -d -P test1:last
                """
            
        }
    }

}
 
   
}
