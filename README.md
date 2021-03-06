# servian-challenge
## 95% Automation
This task is able to finish the servian challenge by 95% automation process which includes automation infrastructure, application installations, deployment, CI / CD solutions, tests and version control.

## Summary
- this task is built for the Servian TechChallengeApp.
- the automation tasks include automation infrastructure, application installations, deployment, CI / CD solutions, tests and version control.
- the automation processes for this sample are tested and running.
- the app run by golang, however it's partially working and provides limited functions in my experiment.
- the infrastructure codes for creating VM and connection to GCP.
- a TechChallengeApp application running on port 3000.
- docker postgrs db running on port 5432
- docker Jenkins running on port 8080
- a testing Jenkins site is available for showing CI / CD test.
- Ansible playbook used as IaC for the automation.

## Pre-Requisite
- GCP account for IaC (json key)
- Ansible enabled environment
- SSH public key
- Github for Jenkins integration
- gcloud CLI (optional)

## RUN
- git clone https://github.com/joehmchiu/servian-challenge
- cd auto-infrastructure
- ansible-playbook -i hosts playbook.yml
- Jenkins: http://35.189.36.146:8080/
- login with admin/foobar
- build ServianDemo to see the CI / CD process

## Showcase
- This showcase will be presenting to the customers about how will be the application integration and deployment done by Jenkins CI / CD and raising the version tag to push to the forked repository if the case succeeds. The application is forked from Servian github - https://github.com/servian/TechChallengeApp
- The stages for this case include "Start Task", "Update Change", "Preload for Deployment", "Init Working Env", "Deploy Application", "Preload for Testing", "Skipping Create", "Testing Read", "Skipping Update", "Testing Delete" and "Commit Version Change".
- Any commitments submitted to the forked repository the Jenkins pipeline will trigger the deployment process to install the application.
![Installed case sample](https://github.com/joehmchiu/servian-challenge/blob/main/images/app-dump.PNG?raw=true)
- Right after deployed the application, it will start to testing the API which can include unit test, load testing performance test and integration test, for example. 
![An example for this showcase](https://github.com/joehmchiu/servian-challenge/blob/main/images/jenkins-demo-app-dump.PNG?raw=true)
- Once complete the test, the root.go code version will be increased by 1 and pushed into the forked repository to complete the showcase.
![The stages for this case](https://github.com/joehmchiu/servian-challenge/blob/main/images/jenkins-demo.PNG?raw=true)

## TODO
- debug and troubleshooting the app.
- fix the bugs if exist.
- make swagger up and run.
- use an elegant domain name.
- 100% automation.

## Issues
- issue found when try to create (post method) a message:
  post: '{"title":"","priority":1000,"completed":false,"id":0,"Title":"foo"}'
  return: {'content': b"invalid character 'i' in literal true (expecting 'r')\n"}
- swagger does not work, it returns 404 error.

## Links
- task documentation github:  https://github.com/joehmchiu/servian-challenge
- forked application github: https://github.com/joehmchiu/servian-challenge
- Jenkins demo site: http://35.189.36.146:8080/ 
- application URL: http://35.189.36.146:3000/ 

