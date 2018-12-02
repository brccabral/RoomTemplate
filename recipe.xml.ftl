<?xml version="1.0"?>
<recipe>

	<#if !(hasDependency('<#-- add room persistance dependency-->'))>
		<dependency mavenUrl="add room persistance dependency"/>
	</#if>
	
    <instantiate from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
			 
	<instantiate from="src/app_package/Entity.java.ftl" 
	to="${escapeXmlAttribute(srcOut)}/${entityClass}.java"/>
	
	<instantiate from="src/app_package/DaoInterface.java.ftl" 
	to="${escapeXmlAttribute(srcOut)}/${daoInterface}.java"/>

	<instantiate from="src/app_package/Database.java.ftl" 
	to="${escapeXmlAttribute(srcOut)}/activities/${databaseClass}.java"/>

    <open file="${escapeXmlAttribute(srcOut)}/${entityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${daoInterface}.java" />
	<open file="${escapeXmlAttribute(srcOut)}/${databaseClass}.java" />

</recipe>