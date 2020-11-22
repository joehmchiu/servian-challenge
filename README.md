# servian-challenge
## 95% Automation
This task is able to finish the task by 95% automation process includes automation infrastructure, application installations, deployment and CI / CD solutions and tests.

## Include
- this task is built for the Servian TechChallengeApp.
- automation infrastructure, application installations and CI / CD solutions
  and tests.
- the automation is working and running.
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
- Jenkins: http://35.244.91.198:8080/
- login with admin/foobar
- build the demo item to see the CI / CD process

## Showcase
- This showcase will be presenting to the customers about how will be the application integration and deployment done by Jenkins CI / CD and raise the version tag commited to the forked repository if the case succeeds. The application is forked from Servian github - https://github.com/servian/TechChallengeApp
- The stages for this case include "Start Task", "Update Change", "Preload for Deployment", "Init Working Env", "Deploy Application", "Preload for Testing", "Skipping Create", "Testing Read", "Skipping Update", "Testing Delete" and "Commit Version Change".
![The stages for this case](https://github.com/joehmchiu/servian-challenge/blob/main/images/jenkins-demo.PNG?thumbnail)
- Any commitments submitted to the forked repository the Jenkins pipeline will trigger the deployment process to install the application.
![Installed case sample](https://github.com/joehmchiu/servian-challenge/blob/main/images/app-dump.PNG?raw=true | width=250)
- Right after deployed the application, it will start to testing the API including unit test, load testing performance test and integration test, for example. 
![An example for this showcase](https://github.com/joehmchiu/servian-challenge/blob/main/images/jenkins-demo-app-dump.PNG?raw=true | width=250)
- Once complete the test, the root.go code version will be increased 1 and pushed to the forked repository to complete the CI / CD process.

## TODO
- debug and troubleshooting the app.
- fix the bugs for running.
- make swagger up and run.
- use an elegant domain name.
- 100% automation.

## Issue
- issue found when try to create (post) the json to create a message:
  post: '{"title":"","priority":1000,"completed":false,"id":0,"Title":"foo"}'
  return: {'content': b"invalid character 'i' in literal true (expecting 'r')\n"}
- swagger does not work, it returns 404 error.

## Links
- task documentation github:  https://github.com/joehmchiu/servian-challenge
- forked application github: https://github.com/joehmchiu/servian-challenge
- Jenkins demo site: http://35.244.91.198:8080/ (admin/foobar, feel free to test it.)
- application URL: http://35.244.91.198:3000/ 

