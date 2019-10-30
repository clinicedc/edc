. "$HOME/.duplicity/.env_variables.conf"

duplicity list-current-files $AWS_ENDPOINT/$AWS_BUCKET

unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
unset AWS_ENDPOINT
unset AWS_BUCKET
unset GPG_KEY
unset PASSPHRASE
unset DB_NAME
unset DB_DATE
unset DB_FILE
unset BACKUP_DIR
