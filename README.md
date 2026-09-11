# Linux User setup Automation Script
A Bash script that automatess the process of creating a new Linux user , setting up a project for them, and assingning correct ownership -a common task in system administration.
## What it does
1. Prompts the user to enter a username
2. creates a new Linux user account with that username 
3. Creates a 'projects' directory inside the new user's home folder
4. Sets ownership of that directory to the new user (instead of root)

## Why i built this

I'am currently preparing for the RHCSA ( Red hat Certified System Administrator ) certification. this script combines two core areas from the exam - **user/group management** and **file permission/ownership** - into a single practical automation task,similer to what a sysadmin would do when onboarding a new user.

## Tech Used

- Bash scripting
- Core Linux commands: 'useradd' , 'mkdir' , 'chown'

## how to run it

1. Clone this repository:
'''bash
   git clone https//github.com/Vineet9068800156/Linux-user-setup-script.git
   cd Linux-user-setup-script
'''

2. Give the script execute permissions:
'''bash
   chmod =x user_setup.sh
'''
3. Run it with 'sudo' (user creation requires root privileges):
'''bash
   sudo ./user_setup.sh
'''
4. When promted, enter a username (no spaces) - the script will create the user , set up their project directory , and assign ownership.

## Example

Enter the username to create
johndoe
You entered:johndoe


after running , verify with:
'''bash
  id johndoe
  ls -l /home/johndoe/

## What I'd add next

-Input validation (reject username  with spaces or special characters)
- Check if the user already exists before trying to create it, and show a clear message instead of an error
- Add an option to set a custom password for the new user
-Add logging , so every user created by the script is recorded with a timestamp

## What I learned

- How Bash scripts read reuse input via variables
-The difference between defining avariable ('read username') and using its value ('$username')
-how linux ownership ('chown user:group') works and why it matters for permissions 
-Troubleshooting reat system issues (e.g. resolving a subscription-manager registration error to get package installs working)
........... 
