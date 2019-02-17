node(){
stage("Checkout SCM")
      checkout scm
stage("Build Code"){
      //  def mvnHomePath = tool name: 'my-maven-settings', type: 'maven'
      // Run the maven build
    // sh mvn clean install
    //  sh "${mvnHomePath}/bin/mvn clean install"
      
      }
/*stage("Sonar Scan"){
      def sonar = tool name: 'sonar-test', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
      sonar = "${sonar}/bin/sonar-scanner"
sh "${sonar} -Dsonar.projectKey=ct.sandbox.demo.jenkins -Dsonar.projectName=CT-SANDBOX-DEMO-JENKINS -Dsonar.projectVersion=1.0 -Dsonar.sources=. -Dsonar.java.binaries=. -Dsonar.login=..... -Dsonar.host.url=https://staging.sonarqube.blue.azure.cdtapps.com"
}
 stage("Build docker image"){
        //def dockercmd = tool name: 'docker_test', type: 'org.jenkinsci.plugins.docker.commons.tools.DockerTool'
        //sh "${dockercmd} docker build -t sonar-sanbox -f Dockerfile ."
        docker.build("sonar-sanbox")
    }*/
}
