node{
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
sh "${sonar} -Dsonar.projectKey=ct.sandbox.demo-jenkins -Dsonar.projectName=CT-SANDBOX-DEMO-JENKINS -Dsonar.sources=. -Dsonar.java.binaries=.-Dsonar.login=cba169692841ff97e17973bbe991b741fe2f13f3 -Dsonar.host.url=http://192.168.0.10:9002"
}
}
