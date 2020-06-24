# Update master
```
git checkout master
git pull
git merge -X theirs origin/...
git push
```

# Upgrade gradle wrapper
```
git pull
./gradlew wrapper --gradle-version 6.5
git commit -m "LOW / adding gradle wrapper"
git commit -m "LOW / adding gradle wrapper"
git push
```

# Jenkins workspaces

`~jenkins` contains a directory `workspace` that must be cleaned sometimes. There is also the gradle caches (`~jenkins/.gradle`) and maven cache (`~jenkins/.m2`).
