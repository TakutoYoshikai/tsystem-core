# Tutorial

## migration
When you install some softwares. tsystem can save it as migration files.

```bash
tsys migrate add <migration title> # it creates a migration file and edit it.
tsys migrate # run the migration file.
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
