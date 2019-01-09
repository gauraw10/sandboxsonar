node
{
stage("Checkout SCM"){
      checkout scm
stage("Build Code")
    sh mvn clean install
stage("Sonar Scan"){
sh mvn -Dsonar.projectKey=ct.sandbox.demo-jenkins  -Dsonar.projectName=CT-SANDBOX-DEMO-JENKINS -Dsonar.login= -Dsonar.host.url=https://staging.sonarqube.blue.azure.cdtapps.com sonar:sonar
}
}
