# P1

## Prepare environment ( one time )
    # apt install python-dev -y
    apt install virtualenv -y
    useradd user1 && mkdir /home/user1
    
    
## Installation ( one time )
    cd ~
    virtualenv pr1-venv
    cd pr1-venv
    . bin/activate   # source
    
    git clone https://github.com/wtayyeb/pr1.git
    pip install -U -r pr1/requirement.txt
    ln -s /home/user1/pr1-venv/pr1/pr1.supervisor.conf /etc/supervisor/conf.d/pr1.conf
    supervisorctl start pr1_uwsgi

## Upgrade
    cd ~/pr1-venv
    . bin/activate   # source

    cd pr1/
    git pull origin master
    pip install -U -r requirement.txt
    supervisorctl stop pr1_uwsgi
    supervisorctl reload        # if supervisor conf edited
    supervisorctl start pr1_uwsgi
    
    # upgrade steps included in upgrade.sh

