#!/bin/bash
ssh oss@10.211.203.214:/home/oss/chef-repo
knife node run_list set ucp1 recipe[ntp]
ssh -i /home/oss/key-ucp1 oss@10.211.203.55:/home/oss && chef-client
