node
{
stage("Checkout SCM"){
      checkout scm
stage("Build Code")
    sh mvn clean install
stage("Sonar Scan"){
sh mvn -Dsonar.projectKey=ct.sandbox.demo-jenkins  -Dsonar.projectName=CT-SANDBOX-DEMO-JENKINS -Dsonar.login=fa4f1bba83d78a1babca5800c7ae5b5d846309d0 -Dsonar.host.url=http://192.168.99.100:9000 sonar:sonar
}
}
