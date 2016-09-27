# Installation

1. install jdk 8 from oracle

2. install gradle [https://docs.gradle.org/current/userguide/installation.html](https://docs.gradle.org/current/userguide/installation.html)

3. install git

4. install pride [https://github.com/prezi/pride](https://github.com/prezi/pride)

# Usage

1. create a new pride
	- create a directory to contain the pride
	- go into that directory
	- pride init
	- configure the pride (`pride config repo.base.url https://github.com/openflexo-team`) if you have the right you can also use `git@github.com:openflexo-team`
	
2. add the pride elements
	- `pride add XX`
	- `cd XX`
	- `git checkout gradle-migration`
	- `cd ..`
	- `pride reinit -D`
	
3. do it for all need element

# Creating a gradle branch

1. `cd XX`

2. `git checkout -b gradle-migration`

3. `git push -u origin gradle-migration`

4. create `setting.gradle`

5. create `build.gradle`

6. create `build.gradle` for the sub-projects

7. `cd ..`

# Applying commands to all pride members

`pride do -- { git status , git push }`

# Some gradle command

- `gradle test --continue` : executing all tests

- `gradle openflexo-core:fml-parser:test -a` : do not rebuild dependencies

- `gradle openflexo-technology-adapters:freeplaneconnector:dependencies` : the list of dependencies

- To get verbose tests
    testLogging {
      showStandardStreams = true
    }


# Importing a pride in eclipse
1. import gradle project
2. execute `gradle connie:connie-parser:build` (to build the connie parser)
3. make source folder `target/generated-sources/sablecc`
4. execute `gradle openflexo-core:fml-parser:build` (to build the fml parser)
5. make source folder `target/generated-sources/sablecc`

# Running freemodelling
`gradle openflexo-packaging:packages:freemodelling:run`


# Cleaning eclipse files 
`find . \( -name ".classpath" -o -name ".project" -o -name ".settings" -o -name "bin" \) -exec rm -rf {} \;`

