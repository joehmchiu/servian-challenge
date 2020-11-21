# servian-challenge
## 95% Automation
This task is able to finish the application by 95% automation process includes automation infrastructure, application installations and CI / CD solutions.

## Include
- automation infrastructure, application installations and CI / CD solutions.
- this task is built for the Servian TechChallengeApp.
- the automation is fully working and running.
- the app is partially working and provides limited function.
- the infrastructure codes for creating VM and connection to GCP.
- a TechChallengeApp application running at port 3000.
- a testing Jenkins for CI / CD test.
- Ansible playbook for the automation IaC.

## TODO
- debug and troubleshooting the app.
- fix the bugs for running.
- make swagger up and run.
- 100% automation.

## Issue
- issue found when try to create (post) the json to create a message:
  post: '{"title":"","priority":1000,"completed":false,"id":0,"Title":"foo"}'
  return: {'content': b"invalid character 'i' in literal true (expecting 'r')\n"}
- swagger cannot not setup and run, it returns 404 error.
