<?xml version="1.0" encoding="UTF-8"?>
<project>
  <modelVersion>4.0.0</modelVersion>
  <groupId>org.openflexo</groupId>
  <artifactId>@maven.artifact.id@</artifactId>
  <version>@project.version@</version>
  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-dependency-plugin</artifactId>
        <version>2.7</version>
        <configuration>
        <artifactItems>
            <artifactItem>
              <groupId>@maven.group.id@</groupId>
              <artifactId>@maven.artifact.id@</artifactId>
              <version>@project.version@</version>
              <classifier>@maven.classifier@</classifier>
              <type>@maven.type@</type>
              <overWrite>true</overWrite>
            </artifactItem>
          </artifactItems>
          <outputDirectory>@dist.dir@</outputDirectory>
          <overWriteReleases>true</overWriteReleases>
          <overWriteSnapshots>true</overWriteSnapshots>
        </configuration>
      </plugin>

<!-- https://github.com/lukaszlenart/launch4j-maven-plugin -->
<!-- http://launch4j.sourceforge.net/docs.html#Configuration_file-->
<!-- http://illuminatedcomputing.com/code/launch4j-maven-plugin/ -->
<!-- http://search.maven.org/#search|ga|1|launch4j-->
<!-- https://joinup.ec.europa.eu/svn/pdf-over/trunk/pdf-over-gui/pom.xml -->
<plugin>
    <!--groupId>org.bluestemsoftware.open.maven.plugin</groupId>
    <artifactId>launch4j-plugin</artifactId>
    <version>1.5.0.0</version-->
    <groupId>com.akathist.maven.plugins.launch4j</groupId>
    <artifactId>launch4j-maven-plugin</artifactId>
    <version>1.7.8</version>

    <executions>

        <!-- GUI exe -->
        <execution>
            <id>l4j</id>
            <phase>package</phase>
            <goals>
                <goal>launch4j</goal>
            </goals>
            <configuration>
                
       <dontWrapJar>true</dontWrapJar>
       <headerType>console</headerType>
       <outfile>dist/${project.artifactId}-${project.version}.exe</outfile>
       <classPath>
              <!-- <addDependencies>false</addDependencies>
                <preCp>anything</preCp> -->
       	      <mainClass>@main.class@</mainClass>
              <cp>%EXEDIR%/lib/</jarLocation>
              <cp>%EXEDIR%/deps/</jarLocation>
       </classPath>
       <errTitle>Openflexo - Application Error</errTitle>
       <cmdLine>-userType @userType@</cmdLine>
       <chdir>.</chdir>
       <priority>normal</priority>
       <downloadUrl>http://java.com/download</downloadUrl>
       <supportUrl/>
       <stayAlive>false</stayAlive>
       <restartOnCrash>false</restartOnCrash>
       <manifest/>
      <icon>@icons.dir@\@wizard.setup.icon@</icon>
       <jre>
              <path/>
              <bundledJre64Bit>false</bundledJre64Bit>
              <bundledJreAsFallback>false</bundledJreAsFallback>
              <minVersion>1.7.0</minVersion>
              <jdkPreference>preferJre</jdkPreference>
              <runtimeBits>64/32</runtimeBits>
              <initialHeapPercent>80</initialHeapPercent>
              <maxHeapPercent>80</maxHeapPercent>
       </jre>
       <versionInfo>
              <fileVersion>@4d_version@</fileVersion>
              <txtFileVersion>${project.version}</txtFileVersion>
              <fileDescription>@productDescription@</fileDescription>
              <copyright>@Copyright@</copyright>
              <productVersion>@4d_version@</productVersion>
              <txtProductVersion>${project.version}</txtProductVersion>
              <productName>@maven.artifact.id@</productName>
              <internalName>@maven.artifact.id@</internalName>
              <originalFilename>${project.artifactId}-${project.version}.exe</originalFilename>
       </versionInfo>
            </configuration>
        </execution>
    </executions>
</plugin>

    </plugins>
  </build>
</project>
