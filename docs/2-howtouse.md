# How to use (Basic commands)

### migration
When you install some softwares, tsystem can save it as migration files.

```bash
tsys migrate add <migration title> # It creates a migration file and edit it.
tsys migrate # It runs the migration file.
```

When you run migration file again, edit migrated.txt by command below.
```bash
tsys migrate edit
```

When you want to check migration files that isn't executed yet, run command below.
```bash
tsys migrate diff
```

### install package
When you install packages such as apt or yum, use `tsys install`
```bash
tsys install <package name>
```

### remove package
When you remove packages such as apt or yum, use `tsys remove`
```bash
tsys remove <package name>
```

### save changes
When you save changes, use tsys save. The command creates commits of your tsystem-core and tbin-core.
```bash
tsys save
```

### update
tsys update does apt or yum update and upgrade, pulling all repositories about tsystem, and runs migration files that be added.
```bash
tsys update
```

### check status
When you check changes of tsystem, you can use `tsys status`
```bash
tsys status
```
