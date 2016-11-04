name        "cakedeploy"
description "Server configuration changes after CakePHP deploy"
maintainer  "GSN"
license     ""
version     "1.0.0"

recipe "cakedeploy", "Cakephp Post Deploy configuration"
recipe "cakedeploy::createtmpfolder", "Adds app/tmp folder and sets permissions"
recipe "cakedeploy::setenv_production", "Set the server Environment"
