<!---
	* Author: Cristian Costantini
	* E-mail: cristian@millemultimedia.it
	* Version: 1.0.0 Alpha
	* Date: 6/9/2009 14:35:32
	* FileName: index.cfm 
	--->

<cftry>
	
	<cfset o = createObject('component','org.yaml.Yaml').init( expandPath( '/org/yaml/lib/jyaml-1.3.jar' ) ) />
	
	<p><cfoutput>#expandPath( '/org/yaml/lib/jyaml-1.3.jar' )#</cfoutput></p>
	
	<h2>RAML</h2>
	<cfset obj = o.load( expandPath( '/rest-builder/src/ajm/res3.raml' ) ) />
	
	<cfdump var="#obj#" label="/rest-builder/src/ajm/res3.raml: Yaml to Object">
	
	<cfoutput>
	Title: #obj['title']#<br />
	</cfoutput>
	
	<hr>
	
	
	<h2>Samples</h2>
	
	
	<cfset obj = o.load( expandPath( 'test.yaml' ) ) />
	
	<cfdump var="#obj['product'][1]#" label="product[1]: Yaml to Object | price: #obj['product'][1]['price']#">
	<cfdump var="#obj['product']#" label="product: Yaml to Object">
	<cfdump var="#obj#" label="Yaml to Object">
	
	
	<cfset d = o.dump( obj ) />
	
	
	<hr>
	
	<cfset fileWrite( expandPath( 'Test2.yaml' ), d ) />
	
	<cfdump var="#d#" label="Object To Yaml">
	
	
	<cfset obj = o.load( expandPath( 'test2.yaml' ) ) />
	
	<cfdump var="#obj#" label="Test 2">
	
	<cfcatch>
		<cfdump var="#cfcatch#" label="bugger">
	</cfcatch>
</cftry>