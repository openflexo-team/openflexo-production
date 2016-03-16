<?xml version="1.0" encoding="UTF-8"?>
<launch4jConfig>
	  <dontWrapJar>false</dontWrapJar>
	  <headerType>gui</headerType>
	  <outfile>target/${project.artifactId}-${project.version}.exe</outfile>
	  <mainClass>@main.class@</mainClass>
	  <jar>target/${project.artifactId}-${project.version}-shaded.jar</jar> <!-- 'shaded' is the value set on shadedClassifierName above -->
          <classPath>
		    <!-- <addDependencies>false</addDependencies>
                <preCp>anything</preCp> -->
		     <jarLocation>lib/</jarLocation>
		     <jarLocation>deps/</jarLocation>
            </classPath>
  <errTitle>App Err</errTitle>
  <cmdLine>-D toto</cmdLine>
  <chdir>.</chdir>
  <priority>normal</priority>
  <downloadUrl>http://java.com/download</downloadUrl>
  <supportUrl/>
  <stayAlive>false</stayAlive>
  <restartOnCrash>false</restartOnCrash>
  <manifest/>
                <icon>../../Icons/Openflexo.ico</icon>
  <jre>
    <path/>
    <bundledJre64Bit>false</bundledJre64Bit>
    <bundledJreAsFallback>false</bundledJreAsFallback>
                    <minVersion>1.7.0</minVersion>
                    <maxVersion>1.8.0</maxVersion>
    <jdkPreference>preferJre</jdkPreference>
    <runtimeBits>64/32</runtimeBits>
    <initialHeapPercent>80</initialHeapPercent>
    <maxHeapPercent>80</maxHeapPercent>
		    <opts>
                    	<opt>-userType developer_release</opt>
                    </opts>
  </jre>
                <versionInfo>
                    <fileVersion>1.8.0.0</fileVersion>
                    <txtFileVersion>${project.version}</txtFileVersion>
                    <fileDescription>a description</fileDescription>
                    <copyright>OpenFlexo</copyright>
                    <productVersion>1.0.0.0</productVersion>
                    <txtProductVersion>1.0.0.0</txtProductVersion>
                    <productName>@maven.artifact.id@</productName>
                    <internalName>@maven.artifact.id@</internalName>
                    <originalFilename>${project.artifactId}-${project.version}.exe</originalFilename>
                </versionInfo>
</launch4jConfig>
