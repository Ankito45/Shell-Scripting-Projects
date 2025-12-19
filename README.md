# AWS S3 Event Triggering
**NOTE**: REPLACE YOUR AWS ACCOUNT ID IN THE LAMBDA FUNCTION CODE.

AWS S3 Event triggering is a very popular project used by top companies in the Industry.

Here are some examples of top companies that use S3 event triggering:

**Netflix**: Netflix use S3 event triggering to automatically process video files uploaded to Amazon S3, enabling seamless content ingestion and processing.

**Airbnb**: This lodging and homestays aggregator use S3 event triggering to automatically process and analyze data stored in Amazon S3, such as guest reviews and booking information.

**Expedia**: They use S3 event triggering to automatically process and analyze data stored in Amazon S3, such as travel bookings, user profiles, and pricing information, to power their personalized travel recommendations and search features.


![Screenshot 2023-04-14 at 7 06 46 PM](https://user-images.githubusercontent.com/43399466/232058778-a7299e9b-9892-471c-a05d-14d773b5b333.png)

# Node Health Monitoring Script

## Description
A comprehensive shell script that monitors and reports the health status of a Linux system. It provides real-time information about system resources including disk usage, memory usage, and running services.

## Features
- **Disk Usage Monitoring**: Displays disk space usage for all mounted filesystems
- **Memory Usage Tracking**: Shows RAM and swap memory consumption
- **Service Status Check**: Lists all running services on the system
- **Formatted Output**: Clean, easy-to-read output with section headers

## Prerequisites
- Linux/Unix-based operating system
- Bash shell

# GitHub Repository Users Lister

## Description
A shell script that lists all users (collaborators) associated with a GitHub repository using the GitHub API. The script requires a repository name and a GitHub Personal Access Token for authentication.

## Features
- Lists all collaborators of a GitHub repository
- Uses GitHub REST API v3
- Secure authentication using Personal Access Token
- Displays usernames of all users with access to the repository
- Supports both public and private repositories

## Prerequisites
- Linux/Unix-based operating system with Bash
- `curl` command-line tool
- `jq` (JSON processor) - for parsing API responses
- GitHub Personal Access Token with appropriate permissions

## Installation

### 1. Clone the repository
```bash
git clone https://github.com/Ankito45/Shell-Scripting-Projects.git
cd Shell-Scripting-Projects
```

### 2. Install dependencies
```bash
# On Ubuntu/Debian
sudo apt-get install curl jq

# On CentOS/RHEL
sudo yum install curl jq

# On macOS
brew install curl jq
```

### 3. Make the script executable
```bash
chmod 777 list_users.sh
```
## API Endpoint Used
```
GET https://api.github.com/repos/{owner}/{repo}/collaborators
```

## Permissions Required

Your GitHub token needs:
- **Read access** to the repository
- For private repos: `repo` scope
- For organization repos: `read:org` scope

## Troubleshooting
### Error: "Not Found" (404)
- Check repository name format: `owner/repo`
- Verify token has access to the repository
- Ensure repository exists

### Error: "Bad credentials" (401)
- Token may be expired or invalid
- Generate a new Personal Access Token
- Check token permissions/scopes

### Error: "jq: command not found"
- Install jq: `sudo apt-get install jq`

### Empty output
- Repository might have no collaborators
- Token might lack necessary permissions

## Security Notes

⚠️ **Important Security Practices:**
- **Never commit your token to version control**
- Store tokens in environment variables or secure vaults
- Use tokens with minimum required permissions
- Rotate tokens regularly
- Consider using `.gitignore` to exclude token files

### Recommended: Using Environment Variables
```bash
# Set token as environment variable
export GITHUB_TOKEN="ghp_xxxxxxxxxxxxxxxxxxxx"
```
## Enhancements

Possible improvements to the script:
- Add error handling for API rate limits
- Display additional user information (permissions, contributions)
- Support for pagination (repos with 100+ collaborators)
- Export results to CSV or JSON format
- Filter users by permission level


## Contributing
Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

## References
- [GitHub REST API Documentation](https://docs.github.com/en/rest)
- [GitHub Personal Access Tokens](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
