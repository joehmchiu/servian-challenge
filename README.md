# servian-challenge
## 95% Automation
This task is able to finish the task by 95% automation process includes automation infrastructure, application installations and CI / CD solutions.

## Include
- this task is built for the Servian TechChallengeApp.
- automation infrastructure, application installations and CI / CD solutions
  and tests.
- the automation is fully working and running.
- the app run by go, it's partially working and provides limited functions.
- the infrastructure codes for creating VM and connection to GCP.
- a TechChallengeApp application running at port 3000.
- a testing Jenkins site for CI / CD test.
- Ansible playbook for the automation IaC.

## Pre-Requisite
- GCP account for IaC
- Centos 7 with Ansible installed
- gcloud (optional)

## RUN
- git clone https://github.com/joehmchiu/servian-challenge
- cd auto-infrastructure
- ansible-playbook -i hosts playbook.yml
- Jenkins: http://35.244.91.198:8080/ or http://35.189.47.37:8080
- login with admin/foobar
- build the demo item to see the CI / CD process

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
