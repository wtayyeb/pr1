# P1

## Prepare environment ( one time )
    # apt install python-dev -y
    apt install virtualenv -y
    
    
## installation ( one time )
    cd ~
    virtualenv pr1-venv
    cd pr1-venv
    . bin/activate   # source
    
    git clone https://github.com/wtayyeb/pr1.git
    pip install -U -r pr1/requirement.txt


## Upgrade
    cd ~/pr1-venv
    . bin/activate   # source

    cd pr1/
    git pull origin master
    pip install -U -r requirement.txt

