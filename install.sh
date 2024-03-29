#!/bin/bash

SC_ROOT=${SC_ROOT:-~/.sc}
SC_REPO=${SC_REPO:-wingkwong/sc}
SC_REMOTE=${SC_REMOTE:-https://github.com/${SC_REPO}.git}
SC_BRANCH=${SC_BRANCH:-master}

clone_from_git()
{
    cat << EOF
--------------------------------------------------------
Cloning sc from ${SC_REMOTE}
--------------------------------------------------------
EOF
    git clone --depth=1 --branch "$SC_BRANCH" "$SC_REMOTE" "$SC_ROOT" || 
    {
		echo "Failed to git clone sc"
		exit 1
	}
}

create_sc_rc()
{
    cat << EOF
--------------------------------------------------------
Creating RC file
--------------------------------------------------------
EOF

    if [ -f $SC_ROOT/.sc_rc ] || [ -h $SC_ROOT/.sc_rc ]; then 
        echo ".sc_rc exists"
        exit 1 
    fi

    cp $SC_ROOT/.sc_rc.default $SC_ROOT/.sc_rc || {
        echo "Failed to copy .sc_rc.default"
        exit 1
    }
    
    chmod +x $SC_ROOT/sc.sh 
    cat << EOF
--------------------------------------------------------
Creating ~/.bash_profile backup
--------------------------------------------------------
EOF
    cp ~/.bash_profile $SC_ROOT/.bash_profile.bak

    cat << EOF
--------------------------------------------------------
Writing ~/.bash_profile 
--------------------------------------------------------
EOF
# TODO: To check if it already exists
{
echo "if [ -f $SC_ROOT/.sc_rc ]; then";
echo "  . $SC_ROOT/.sc_rc";
echo "fi"
} >> ~/.bash_profile

    cat << EOF
--------------------------------------------------------
Source ~/.bash_profile 
--------------------------------------------------------
EOF
    source ~/.bash_profile 
}

install()
{
    cat << EOF
   __________
  / ___/ ___/
 (__  ) /__  
/____/\___/  
             
EOF

    if [ -d "$SC_ROOT" ]; then
        echo "You have already installed sc."
        exit 1
    fi

    if [ ! command -v "git" >/dev/null 2>&1  ]; then
        echo "Git is required. Please retry after you have installed it."
        exit 1
    fi

    clone_from_git
    create_sc_rc
    
}

install