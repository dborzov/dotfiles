######################################################################
# I run this script as root on new remote Ubuntu instances to        #
# install the most basic useful things and make shell more tolerable.#
#                                                                    #
# It largerly just copies the dotfiles to their intended positions   #
######################################################################

mkdir -p /go

# generate ssh keys for the machine
ssh-keygen -t rsa -b 4096 -C "tihoutrom@gmail.com"
ssh-add ~/.ssh/id_rsa
# print out the new key so that I can add it to Github
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cat ~/.ssh/id_rsa.pub
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# install latest Golang compiler
wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.4.2.linux-amd64.tar.gz
rm go1.4.2.linux-amd64.tar.gz
echo 'export GOPATH=/go' >> /etc/bash.bashrc
echo `export PATH=$PATH:/usr/local/go/bin:/go/bin`  >> /etc/bash.bashrc
export DATACATS_ENV=test
