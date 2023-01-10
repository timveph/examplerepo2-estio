# Infrastructure as Code

## Ansible

This project shows how to automate reverse proxy and basic app deployment using Ansible, which is an idempotent configuration management tool.

### Steps to Replicate

- spin up cloud instance

- ssh onto one instance and put your script and ansible files onto it

- create and configure ssh key, editing the inventory and playbook as required

- run the command 

   ```
      ansible-galaxy init <role>
   ```
   to initiate a role to divide your project into sections

- run the command

    ```
        ansible-playbook -v -i inventory.yaml playbook.yaml
    
    ``` 
    once you have updated your playbook.yaml/yml
