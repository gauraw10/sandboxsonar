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
sh "${sonar} -Dsonar.projectKey=ct.sandbox.demo-jenkins -Dsonar.projectName=CT-SANDBOX-DEMO-JENKINS -Dsonar.sources=. -Dsonar.java.binaries=. -Dsonar.login=0bdf9d1061529704c494f3c3b2e478407a6a07bf -Dsonar.host.url=http://172.19.183.18:9002"
}
  stage("Build docker image"){
        docker.build("sonar-sanbox")
    }
}
