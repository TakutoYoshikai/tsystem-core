# How to use of tsystem module

### Create github repository
The repository name must be 
```
tsystem-mod-<MODULE NAME>
```

## Commands
### Create new module
```bash
tmm new <MODULE NAME>
# A tsystem module is created as ~/tsystem-mods/<MODULE NAME>
```

### Migration
When you install some softwares as a change of tsystem module, You can create a migration file of tsystem module.
```bash
tmm migrate add <MODULE NAME> <MIGRATION TITLE> # It creates a migration file and edit it.
tmm migrate # It runs the migration file.
```

### Save module
```bash
tmm save
```

### Check status of tsystem modules
```bash
tmm status
```

### Update
```bash
tmm update
```

### Remove tsystem module
```bash
tmm remove <MODULE NAME>
```

### List of tsystem modules
```bash
tmm ls
```

## Directory Structure
### Apt or yum package list
You can write this file to install apt packages as a change of tsystem module.
```
~/tsystem-mods/<MODULE NAME>/package.txt
```

### Bin directory
The directory is in the $PATH. You can create shell commands in this directory.
```
~/tsystem-mods/<MODULE NAME>/bin
```

### Uninstall script
The file is a shell script for removing the tsystem module. It is executed when you use "tmm remove"
```
~/tsystem-mods/<MODULE NAME>/uninstall
```
