node
{
stage("Checkout SCM"){
      checkout scm
stage("Build Code")
    sh mvn clean install
stage("Sonar Scan"){
sh mvn -Dsonar.projectKey=ct.sandbox.demo-jenkins  -Dsonar.projectName=CT-SANDBOX-DEMO-JENKINS -Dsonar.login=89d236e361f229622e3cba58f66d54dbc227b06d -Dsonar.host.url=https://staging.sonarqube.blue.azure.cdtapps.com sonar:sonar
}
}
