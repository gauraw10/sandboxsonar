node(){
stage("Checkout SCM")
      checkout scm
stage("Build Code"){
        def mvnHomePath = tool name: 'my-maven-settings', type: 'maven'
      // Run the maven build
      sh "${mvnHomePath}/bin/mvn clean install"
      
      }
stage("Sonar Scan"){
      def sonar = tool name: 'sonar-test', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
      sonar = "${sonar}/bin/sonar-scanner"
sh "${sonar} -Dsonar.projectKey=ct.sandbox.demo-jenkins -Dsonar.projectName=CT-SANDBOX-DEMO-JENKINS -Dsonar.sources=. -Dsonar.java.binaries=. -Dsonar.login=a8200fb5ea70d9f38145d1ac7cf964ff51a9ce4b -Dsonar.host.url=http://192.168.0.6:9000"
}
  stage("Build docker image"){
        //def dockercmd = tool name: 'docker_test', type: 'org.jenkinsci.plugins.docker.commons.tools.DockerTool'
        //sh "${dockercmd} docker build -t sonar-sanbox -f Dockerfile ."
        docker.build("sonar-sanbox")
    }
}
