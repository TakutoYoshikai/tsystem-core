# Tutorial

## migration
When you install some softwares. tsystem can save it as migration files.

```bash
tsys migrate add <migration title> # Tt creates a migration file and edit it.
tsys migrate # It runs the migration file.
```
## package install
When you install packages such as apt or yum, use tsys install
```bash
tsys install <package name>
```

## save changes
When you save changes, use tsys save. The command creates commits of your tsystem-core and tbin-core.
```bash
tsys save
```
