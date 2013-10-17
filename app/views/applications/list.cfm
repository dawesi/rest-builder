<ul>
	<li><a href="/rest-builder/index.cfm/applications/new">Add new Application</a></li>
	<cfloop array="#rc.apps#" item="app"><cfoutput>
		<li><a href="/rest-builder/index.cfm/application/#app#/resources">#app#</a></li>
	</cfoutput></cfloop>
</ul>

<cfdump var="#cgi.path_info#" label="path_info">