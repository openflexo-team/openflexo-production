# Release process

Suppose we want to release version X of component C.

1. Ensure snapshot build correctly.
2. Use the jenkins release task for C (category production). This task rely on adding a parameter to the gradle build task that remove the -SNAPSHOT from the name of C and its dependencies and push to openflexo-release in the artifactory.
3. Tags the corresponding git commit.
4. Advance the version of C (in file build.gradle).
5. Change or create a new snapshot task on jenkins.
6 (optional) In case of major update, create a new branch and update jenkins tasks.
6 (optional) In case of major update, advance the master branch by merging it.
