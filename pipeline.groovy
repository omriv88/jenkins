import jenkins.model.*
import hudson.model.*

def jenkins = Jenkins.getInstance()

def pipelineJob = jenkins.createProject(WorkflowJob, "pipeline-demo")
pipelineJob.definition = new CpsFlowDefinition('''
    node {
        stage('Hello World') {
            echo 'Hello World!'
        }
    }
''', true)
pipelineJob.save()
