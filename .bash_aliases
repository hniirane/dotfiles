clearCache() {
    	# Get the env to clear from the first argument $1
	if [ -z $1 ]
	then
		php app/console cache:clear
	else
		php app/console cache:clear --env test
	fi    
}

clearTestDb() {
	php app/console doctrine:mongodb:schema:drop --env test
    	php app/console doctrine:mongodb:schema:create --env test
}
alias pipes='~/.bash/pipes.sh'
alias softclear_cache=clearCache
alias purge_testdb=clearTestDb
alias xdebug_enable='sudo phpenmod xdebug'
alias xdebug_disable='sudo phpdismod xdebug'
