. "$HOME/.duplicity/.env_variables.conf"

# note will fail if file exists
duplicity --verbosity info \
 --encrypt-sign-key=$GPG_KEY \
 --log-file $HOME/.duplicity/info.log \
 --file-to-restore $1 \
 $AWS_ENDPOINT/$AWS_BUCKET \
 $HOME/$1

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
