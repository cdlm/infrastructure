# setup for globally installed python software, e.g. with brew-pip
export PYTHONPATH=$bp/lib/python2.7/site-packages
export PATH=$PATH:$bp/share/python

alias pytest='nosetests -v --with-doctest'
alias doctest='python -m doctest'
