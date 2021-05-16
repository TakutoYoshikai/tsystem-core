# How to use (TSYSTEM MODULE)

### create new module
```bash
tmm new <MODULE NAME>
```
### migration
When you install some softwares as a change of tsystem module, You can create a migration file of tsystem module.
```bash
tmm migrate add <MODULE NAME> <MIGRATION TITLE> # It creates a migration file and edit it.
tmm migrate # It runs the migration file.
```

### create github repository
The repository name is 
```
tsystem-mod-<MODULE NAME>
```

### save module
```bash
tmm save
```

### check status of tsystem modules
```bash
tmm status
```

### update
```bash
tmm update
```

### remove tsystem module
```bash
tmm remove <MODULE NAME>
```

### list of tsystem modules
```bash
tmm ls
```
