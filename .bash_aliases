clearCache() {
        ENV=$1
        ENABLE_DEBUG="false"
        if  [[ $(php -v | grep debug) ]] ; then
                echo "Disabling xdebug"
                ENABLE_DEBUG="true"
                sudo phpdismod xdebug >&/dev/null
        fi
        # Get the env to clear from the first argument $1
        if [ -z $ENV ] ; then
                php app/console cache:clear --env test --no-debug
        else
                php app/console cache:clear --env $ENV --no-debug
        fi
        if [ "$ENABLE_DEBUG" == "true" ] ; then
                echo "Enabling xdebug"
                sudo phpendmod xdebug >&/dev/null
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
