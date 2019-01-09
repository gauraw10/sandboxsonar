node{
stage("Checkout SCM")
      checkout scm
      stage("Build Code"){
        def mvnHomePath = tool name: 'my-maven-settings', type: 'maven'
      // Run the maven build
      sh "sh "${mvnHomePath}/bin/mvn clean install"
      
      }
stage("Sonar Scan"){
      def sonar = tool name: 'sonar-test', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
sh "${sonar} -Dsonar.projectKey=ct.sandbox.demo-jenkins  -Dsonar.projectName=CT-SANDBOX-DEMO-JENKINS -Dsonar.login=fa4f1bba83d78a1babca5800c7ae5b5d846309d0 -Dsonar.host.url=http://localhost:9000"
}
}
