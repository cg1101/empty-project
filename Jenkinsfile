@Library('ir-jenkins-build-library@master')
import static ir.build.Utilities.*

node('docker') {
  def image = docker.image(getDockerImage('saas/deploy'))
  image.pull()
  image.inside {
    def deployRole = 'DeployRole'
    def targetAccountAlias = 'ca-pd'
    def scmVars = checkout scm
    // println "[scmVars] ${scmVars}"
    stage('before_install') {
      sh """
        echo "[STAGE before_install]"
      """
    }
    stage('install') {
      sh """
        echo "[STAGE install]"
      """
    }
    stage('before_script') {
      sh """
        echo "[STAGE before_script]"
      """
    }
    stage('script') {
      sh """
        echo "[STAGE script]"
      """
    }
    stage('after_success') {
      sh """
        echo "[STAGE after_success]"
      """
    }
    stage('deploy') {
      withAWS(role:'DeployRole', roleAccount:getAwsAccountNo(targetAccountAlias)) {
        sh """
          echo "[STAGE deploy]"
          ./scripts/deploy.sh
        """
      }
    }
    stage('after_script') {
      sh """
        echo "[STAGE after_script]"
      """
    }
  }
}
