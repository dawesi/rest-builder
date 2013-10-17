<cfoutput><ul>
	<li><a href="#buildURL(action='resources.new', queryString='application='&#rc.application#)#">Add new Resource</a></li>
	<cfloop array="#rc.resources#" item="res">
		<li><a href="/rest-builder/index.cfm/application/#rc.application#/resource/#res#">#res#</a></li>
	</cfloop>
</ul></cfoutput>
