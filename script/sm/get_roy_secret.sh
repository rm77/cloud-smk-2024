aws secretsmanager get-secret-value --secret-id roy_secret | jq .SecretString  | jq -r | jq



