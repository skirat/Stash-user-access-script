# Access Granting Script

This script grants READ, WRITE and ADMIN permissions to a user, for the specified project. The script uses personal access tokens in place of passwords to authenticate when using the Bitbucket Server REST API. It uses cURL to send PUT(update) request to update username and the type of access to be granted.

## Steps to execute the script -

1. Create a personal access token and store it locally in a token.txt file
2. Run the script (./script.sh)
