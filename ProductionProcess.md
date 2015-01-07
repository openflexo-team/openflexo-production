# Production Process for Openflexo Infrastructure
=========================================


## Versioning scheme and components lifecycle

We use the following versioning schemes:
*	*major.minor.revision-qualifier*
*     *major.minor-qualification*

qualifier might be:
* -SNAPSHOT for everyday development releases
* -RCx for release candidates built at the beginning of a QA cycle.

Releases are built at the end of the QA cycle, when version is considered stable enough 

## Jobs in jenkins

There are 3 kinds of jobs, mirroring the 3 kind of releases:
* -SNAPSHOT, continuous build, triggered on VersionControl change
* -RCx, manual jobs
* releases, manual jobs

All builds have at least one parameter, pointing at the releaseVersion to be produced. 
This parameter, *releaseVersion*, is used to select the right branch of the source code, and
sets some parameters for maven and sonar.

## How to do a 'release candidate' build

1. select the project and **check that all dependencies point to official or RCs**
2. launch the job, giving the relevant arguments:
3.  most of the time:  update change in dependencies:  if development should no rely on -RCx component, back to SNAPSHOT releases

Note that you must produce Openflexo-TechnologyAdapters  before Openflexo-Modules, because of dependency issues.
Plus, Openflexo-TechnologyAdapters is released with *-DignoreSnapshots=true* as it needs Openflexo-Modules for testing  :(
... and those dependencies are tested by *maven release* plugin

## How to do a 'release' build

###Prepare the Release
1. Check that you have the latest version pulled from the branch to release, and no checkout remaining on the branch
2. check the dependencies, there should not remain any *-SNAPSHOT* version in dependencies (DO  NOT UPDATE THE VERSION OF THE PROJECT YOU ARE BUILDING)

###Do the release
1.  Go to Jenkins, select the job corresponding to the component your are building in the *Releases* view
2. Click on *Build with parameters* update the releaseVersion and nextVersion parameters and build.
3. Check that everything went ok: you should have a new release version (releaseVersion, current branch) & new branch (nextVersion, branch to come)


###After a Release build, you must:
1. Update the continuous/release candidate/release build  job in Jenkins,so that continuous build points at the right branch on Github (next release version) and that default parameters for **Release Candidate** and **Release** jobs are pointing at the next production version by default (parameters are releaseVersion and nextDevelopmentVersion or releaseCandidateRevision)
2. Update the default branch in github so that future developers get the new development version by default
3. Merge the branch that is been released with *master* branch
4. update Github to point by default on the new Github branch
5. Update the versions in Jira for the Component (publish the released version and prepare the next one)

