:: cmd script to lanuch/reload gpg agent before commiting with git 
:: since gpg is a bitch at times
gpgconf --launch gpg-agent && gpg-connect-agent reloadagent /bye
