def label = "pod.${env.BUILD_NUMBER}.${env.JOB_NAME}".replace('-', '_').replace('/', '_').take(60)
def gitUrl = 'https://github.com/chomchob/alpine-curl-docker'
def gitBranch = 'refs/heads/master'

podTemplate(
  label: label,
) {
node(label) {
  stage('build docker image') {
    def buildParameters = [
      string(name: 'GIT_URL', value: gitUrl), 
      string(name: 'GIT_BRANCH', value: gitBranch), 

      booleanParam(name: 'BUILD_DOCKER_IMAGE', value: true),
      booleanParam(name: 'PUBLISH_TO_DOCKER_HUB', value: true),
      booleanParam(name: 'PUBLISH_LATEST', value: true),
    ]

    // build
    build(
      job: '../../deploy-pipeline', 
      parameters: buildParameters
    )
  }
}
}