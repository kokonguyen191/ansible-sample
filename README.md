# Simple Ansible example

## What is this?

This Ansible example is supposed to help you set up an Ansible playbook that does what you need with minimal googling possible.

Note that this playbook only deploys a working system in the fastest way possible, not **most secure** way possible. Passwords are stored directly in the inventory file, which, obviously, is something you should not do.

Best to follow using [Docker playground](https://labs.play-with-k8s.com)

## Before we start

What we will be doing is trying to simulate a working Elastic stack (learn more about Elastic [here](https://www.elastic.co)) using Docker and Ansible.

This stack will have one Elasticsearch and one Kibana installed on one host, and 4 hosts with Metricsbeat each sending data to Elasticsearch.

## Quick start

1. Start new Docker playground session.

2. Create 5 new instances (fastest way to do this is via templates).

3. Clone this repo to one host. ES and Kibana will be installed on this host.

    ```
    git clone https://github.com/kokonguyen191/ansible-sample.git
    ```
    
4. Cd inside the repo:
    
    ```
    cd ansible-sample
    ```

5. Run `run.sh` to setup Elasticsearch, Kibana, and a Docker container with Ansible. We will deploy Metricsbeat from inside this container. Metricsbeat will also be installed in containers.

    ```
    bash run.sh
    ```
    
    Note: if any of the installation steps are stuck, Ctrl+C and run the script again. This always works, just like how slapping your old CRT monitor makes it work again.

6. Now you are attached to the Docker container with Ansible. You can also see that port 5601, 9200, 9300 has been opened on your host. Your mission now is to use Ansible to set up the stack.

## Using Ansible

1. Cd to `ansible`:

    ```
    cd ansible
    ```

2. Declare your hosts to `hosts.yml` or `hosts.ini`. Change `ansible.cfg` accordingly.

    2a. User is `root`.
    
    2b. Test if you can reach your hosts with this command:
    
        ```
        ansible all -m ping
        ```
        
        or you can specify just a group of hosts with:
        
        ```
        ansible <<group_name>> -m ping
        ```
        
    2c. Run test with specified inventory file (hosts.ini or hosts.yml):
        
        ```
        ansible all -i <<inventory_path>> -m ping
        ```
        
    2d. Try to do a simple command:
    
        ```
        ansible all -a "/bin/echo Hello"
        ```
        
3. Set up the Ansible role. Just follow the instructions in each `main.yml` file.

4. Run playbook:

    ```
    ansible-playbook playbook.yml
    ```
