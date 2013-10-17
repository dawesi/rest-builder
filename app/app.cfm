<h1>ReST Builder</h1>

<cftry>


	<h2>Applications</h2>
<!--- 	<ul>
	<cfloop array="#APPLICATION.getApplications()#" item="app"><cfoutput>
		<li><a href="resources.cfm?application=#app#">#app#</a></li>
	</cfoutput></cfloop>
	</ul> --->

<cfcatch>
	<cfdump var="#cfcatch#" label="cfcatch">
</cfcatch>
</cftry>

