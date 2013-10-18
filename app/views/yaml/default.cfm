<cftry>
	
	<cfset o = createObject('component','org.yaml.Yaml').init( expandPath( 'org/yaml/lib/jyaml-1.3.jar' ) ) />
	
	<p><cfoutput>#expandPath( '/org/yaml/lib/jyaml-1.3.jar' )#</cfoutput></p>
	
	<h2>RAML</h2>
	<cfset obj = o.load( expandPath( '/rest-builder/src/ajm/res3.raml' ) ) />
	
	<cfdump var="#obj#" label="/rest-builder/src/ajm/res3.raml: Yaml to Object">
	
	<cfoutput>
	Title: #obj['title']#<br />
	</cfoutput>
	
	<hr>
	<cfcatch>
		<cfdump var="#cfcatch#" label="bugger">
	</cfcatch>
</cftry>	