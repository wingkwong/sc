alias sf='php app/console'
alias sfp='php app/console --env=prod'
alias sfd='php app/console --env=dev'
alias sft='php app/console --env=test'
alias sfcc='php app/console cache:clear'
alias sfcw='php app/console cache:warmup'
alias sfcd='php app/console container:debug'
alias sfcdg='php app/console container:debug | grep'
alias sfrd='php app/console router:debug'
alias sfrdg='php app/console router:debug | grep'
alias sftd='php app/console twig:debug'
alias sftdg='php app/console twig:debug | grep'
alias sfad='php app/console assetic:dump'
alias sfaw='php app/console assetic:watch'
alias sfai='php app/console assets:install web --symlink'
alias sfsr='php app/console server:run'
alias sfss='php app/console server:status'
alias sfsq='php app/console server:stop'
alias sfdbcreate='php app/console doctrine:database:create'
alias sfdbdrop='php app/console doctrine:database:drop'
alias sffixload='php app/console doctrine:fixtures:load'
alias sfgen='php app/console doctrine:generate:entities'
alias sfmigd='php app/console doctrine:migrations:diff'
alias sfmigx='php app/console doctrine:migrations:execute'
alias sfmigm='php app/console doctrine:migrations:migrate'
alias sfmigs='php app/console doctrine:migrations:status'
alias sfschc='php app/console doctrine:schema:create'
alias sfschd='php app/console doctrine:schema:drop'
alias sfschu='php app/console doctrine:schema:update'
alias sfschv='php app/console doctrine:schema:validate'