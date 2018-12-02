<?xml version="1.0"?>
<recipe>
	<dependency" />
	
    <instantiate from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
			 
	<instantiate from="src/app_package/Application.java.ftl" to="${escapeXmlAttribute(srcOut)}/${classApplication}.java"/>
	
	<instantiate from="src/app_package/activities/MainActivity.java.ftl" to="${escapeXmlAttribute(srcOut)}/activities/${activityClass}.java"/>

	<instantiate from="res/xml/analytics_global_config.xml.ftl" to="${escapeXmlAttribute(resOut)}/xml/analytics_global_config.xml"/>
	
	<instantiate from="res/layout/activity_main.xml.ftl" to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>
	
	<copy from="res/values/dimens.xml" to="${escapeXmlAttribute(resOut)}/values/dimens.xml"/>   

    <open file="${escapeXmlAttribute(srcOut)}/activities/${activityClass}.java" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</recipe>