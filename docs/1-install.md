# Installation

## 1. Create your tsystem repository and tbin repository on your github
Please name tsystem-core repository meaningful name. but tbin-core repository's name must be tbin-core.

## 2. Clone tsystem-core and tbin-core
**tsystem-core**: https://github.com/TakutoYoshikai/tsystem-core

**tbin-core**: https://github.com/TakutoYoshikai/tbin-core

## 3. Remove their .git directories
```
rm -rf .git
```

## 4. Renew git data of two repositories.
```bash
git init
git add .
git commit -m "init"
git remote add origin <your git repository>
```

## 5. Push
```bash
git push origin master
```
