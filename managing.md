> **Status: partly outdated.** Maintenance notes from an earlier period. For instance the Gradle
> wrapper example below targets 6.5, while the repositories now use 7.6.4. Check each command against
> the current setup before applying it.

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
