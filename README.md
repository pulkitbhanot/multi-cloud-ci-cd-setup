# CSCI E-91

## Team 

| Name              |           Email             | 
|-------------------|-----------------------------| 
| Pulkit Bhanot     | pulkitbhanot@g.harvard.edu  |
| Andrew Rodriguez  | anr975@g.harvard.edu        |
| Abid Syed         | abs376@g.harvard.edu        |


## Folder Structure
  **keys** contains the public/private key to be used across all the VM's. It also contains the public key for all the team members which would be added to each of the container. The keys committed here are for demonstration purposes only. In an enterprise setup this repository will be private within the organization only to be accessible for the team managing the infra.
  
  **ansible** contains ansible configurations and playbooks to configure jenkins machine
  
  **terraform** contains terraform templates for ansible server

  **cloudformation** contains the yaml files for launching jenkins, dev and staging server on AWS.
 
  **jenkins** folder contians the pipeline to deploy to the dev/staging and production deployment as doxcker containers.
