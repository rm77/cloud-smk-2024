aws s3api put-object \
    --bucket "mybucket" \
    --body "/tmp/file" \
    --key "$destination_file_name"
