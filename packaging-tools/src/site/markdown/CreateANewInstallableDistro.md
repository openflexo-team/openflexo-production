# HowTo: Create a new installable distribution of Openflexo softwares

Openflexo provides tools to package software distribution including:

* a full set of Openflexo components,
* required dependencies,
* an installer (when relevant).

Those tools can be used to build packages for several platforms: MacOS, linux, Windows.

The __packaging-tools__ maven project contains all the tooling that has been capitalized to do the job.
It is possible to create either:

* a pure _distribution project_ that does not contain any additional resource or source file (e.g., look at the projects in _/openflexo-packaging/packages_), 
* to configure any _standard project_ , containing some source code to be compiled and packaged as a jar, so that it can be distribute as a set of installable packages (one per platform).

## Requirements

### Before you start:

1. you must know the name and location of the _Main class_ of the java application (e.g. _org.openflexo.Flexo_ for a distribution containing only a set of standard modules)
2. you must ensure that the _mvn package_ command generates the jar file containing everything that you want to package as a part of the distribution  (i.e. class files, property files, resources,... ), __except dependencies__
3. if you want to make to distribution available on the download server, you must know the name and path of the directory where your files will be deployed, and ensure that it exists on the download server


### Files needed in the project 

All the files listed here must be present in your project before you start the customization of the distribution building process.
Samples can be found in the __packaging-tests__ project of the __openflexo-production__ Github repository [here](https://github.com/openflexo-team/openflexo-production).
You can copy any missing file from __packaging-tests__ to your own project before customizing them.

#### Files that drive the build & packaging process

Files not specific to a distribution project, that exist in any _standard project_:

* __pom.xml__: the maven project configuration file that also contains information about the standard build process

Files specific to a distribution project:

* __build-packaging.xml__:  the _Ant_ tooling used to generate software distribution _(customization needed for each distribution project)_
* __packaging.properties__: contains the parameters for the tooling that builds installers, launchers and distribution assembly 
* __packaging.xml__: contains the parameters for the packaging of the current project, typically it is used to separate jars produced from Openflexo owned source code from external dependencies


#### Resources needed for the installers & splash screen

Those directories and files need to be in the _src/main/resources_ of the project.
Locations and names of sub-directory may change but must be specified in _build-packaging.xml_.

* __Icons__ sub-directory should contain:
	* _Icons/IconOpenflexo.icns_: MacOS icon, name may change and must be identical in _packaging.properties_ file
	* _Icons/Openflexo.ico_: Windows & Linux icon, name may change and must be identical in _packaging.properties_ file
	* _Icons/SplashPanel.bmp_:  (72x72 ppp en 128 couleurs indexs 580x300 pixels max)
* __License__ sub-directory:
	* must contain a rtf file containing License text that will be displayed during installation (Windows installer)
	* naming schema must be  _<license subdir name>\<version Type>\License.rtf_, e.g. _License/Tests/License.rtf_
	* _version type_ is specified in _packaging.properties_ file

## Step by step: configure a project to build a software distribution

### 1. Ensure your project meets the requirements

As documented in this document....

### 2. Add dependency to __packaging tools__

Edit the _pom.xml_ file to add a dependency:

```xml
		
		<!-- PACKAGING DEPENDENCIES -->
		<dependency>
			<groupId>org.openflexo</groupId>
			<artifactId>packaging-tools</artifactId>
			<version>${packagingtools.version}</version>
			<scope>compile</scope>
		</dependency> 
```

### 2.

## Configuration files

### packaging.properties
* prout
	* versionType=Tests
	* productSuffix=TestApplication
	* productDescription=A test application
	* Copyright=Openflexo
	* icon_mac_name=IconOpenflexo.icns
	* userType=developer_release
	* allowsDocSubmission=false
	* logCount=0
	* keepLogTrace=false
	* default.logging.level=SEVERE
	* maven.artifact.id=packaging-tests
	* maven.group.id=org.openflexo
	* wizard.setup.icon=Openflexo.ico
	* launcher.splash=SplashPanel.bmp
	* vm.args=-Xmx512M -XX:MaxPermSize=128M
