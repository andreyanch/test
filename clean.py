import os

clean_container = 'docker rm -f $(docker ps -a -q)'`'
print(str(os.system (clean_container)))

clean_untagged_image = 'docker volume rm $(docker volume ls -q)'`'
print(str(os.system(clean_untagged_image)))
