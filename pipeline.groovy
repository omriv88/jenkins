import jenkins.model.*
import hudson.model.*

def instance = Jenkins.getInstance()

def job = instance.createProject(WorkflowJob, "pipeline-job")
job.addTrigger(TimerTrigger("H/5 * * * *"))
job.definition = new CpsFlowDefinition(
  """
  node {
    stage("Build") {
      echo "Building..."
    }
    stage("Test") {
      echo "Testing..."
    }
    stage("Deploy") {
      echo "Deploying..."
    }
  }
  """,
  true
)
job.save()

