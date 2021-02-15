#!/bin/sh

# Echo the current date and time

echo '-----------------------------'
date
echo '-----------------------------'
echo ''

# Echo script initialization
echo 'Syncing remote S3 bucket...'

# Actually run the sync command (replace {BUCKET_NAME} with your S3 bucket name)
/usr/bin/aws s3 sync s3://{BUCKET_NAME} /home/ubuntu/s3/{BUCKET_NAME}/

# Echo script completion
echo 'Sync complete'
