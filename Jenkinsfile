node{
stage("Checkout SCM")
      checkout scm
      stage("Build Code"){
      withMaven(
        // Maven installation declared in the Jenkins "Global Tool Configuration"
        maven: 'M3',
        // Maven settings.xml file defined with the Jenkins Config File Provider Plugin
        // Maven settings and global settings can also be defined in Jenkins Global Tools Configuration
        mavenSettingsConfig: 'my-maven-settings',
        mavenLocalRepo: '.repository') {
 
      // Run the maven build
      sh "mvn clean install"
      }
      }
stage("Sonar Scan"){
      def sonar = tool name: 'sonar-test', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
sh "${sonar} -Dsonar.projectKey=ct.sandbox.demo-jenkins  -Dsonar.projectName=CT-SANDBOX-DEMO-JENKINS -Dsonar.login=fa4f1bba83d78a1babca5800c7ae5b5d846309d0 -Dsonar.host.url=http://localhost:9000"
}
}
