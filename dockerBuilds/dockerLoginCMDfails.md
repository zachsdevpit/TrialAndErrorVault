# The Problem
Occasionally when running the command ```docker login``` the following error will appear
```
Error saving credentials: error storing credentials - err: exec: "docker-credential-desktop": executable file not found in $PATH, out: 
```
# The Solution
Haven't really figured out why this happens, but most likely has something to do with updates resetting the configuration. To fix and move on though modify the following.
```
~/.docker/config.json
```
Remove entire line with
```
"credsStore": "desktop",
```
