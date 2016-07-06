# HowTo: Create a new installable distribution of Openflexo softwares =

Openflexo provides tools to package software distribution including a full set of Openflexo components.

Those tools can also be used to build installers for several platforms: iOS, linux, Windows

## Step by step: configure a project to build an new installable distribution

## Files needed in the project

### Files that drive the build & packaging process
* pom.xml
* build-packaging.xml
* packaging.xml
* packaging.properties
** versionType=Tests
** productSuffix=TestApplication
** productDescription=A test application
** Copyright=Openflexo
** icon_mac_name=IconOpenflexo.icns
** userType=developer_release
** allowsDocSubmission=false
** logCount=0
** keepLogTrace=false
** default.logging.level=SEVERE
maven.artifact.id=packaging-tests
maven.group.id=org.openflexo
wizard.setup.icon=Openflexo.ico
launcher.splash=SplashPanel.bmp
vm.args=-Xmx512M -XX:MaxPermSize=128M

### Resources needed for the installers & splash screen generation

Those files need to be in the src/main/resources of the project.

* Icons:
** ./Icons/IconOpenflexo.icns (icone pour mac)
** ./Icons/Openflexo.ico (icone pour Windows)
** ./Icons/SplashPanel.bmp (72x72 ppp en 128 couleurs indexés 580x300 pixels max)
* License:
**./License/Tests
** ./License/Tests/License.rtf

