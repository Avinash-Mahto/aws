# Install aws cli
yum install awscli

# Configre AWS cli
aws configure

# Create local s3 backup directory
mkdir -p /s3/{BUCKET NAME}

# Sysnc S3 bucket to local s3 directory
aws s3 sync s3://{BUCKET_NAME} /s3/{BUCKET_NAME}

# Configure the cron job
vi /s3/sync.sh

# Change the permission the script so it can executable by crontab
chmod +x /s3/sync.sh

# Let's try and run the script
/s3/sync.sh

# Now edit the crontab job (The below cronjob runs every hour)
0 * * * * /s3/sync.sh > /s3/sync.log


