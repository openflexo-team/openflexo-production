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
               <plugin>
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
                                   <jar>lib/${project.artifactId}-${project.version}.jar</jar>
                                   <dontWrapJar>true</dontWrapJar>
                                   <headerType>gui</headerType>
                                   <outfile>dist/@product.name@ @productSuffix@  @flexo_version@.exe</outfile>
                                   <classPath>
                                        <mainClass>@main.class@</mainClass>
                                        <addDependencies>true</addDependencies>
                                        <jarLocation>lib/</jarLocation>
                                        <jarLocation>deps/</jarLocation>
                                        <preCp>lib/*.jar;deps/*.jar</preCp>
                                   </classPath>
                                   <errTitle>Openflexo - Application Error</errTitle>
                                   <cmdLine>-userType @userType@</cmdLine>
                                   <chdir>.</chdir>
                                   <priority>normal</priority>
                                   <downloadUrl>http://java.com/download</downloadUrl>
                                   <supportUrl>https://bugs.openflexo.org</supportUrl>
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
