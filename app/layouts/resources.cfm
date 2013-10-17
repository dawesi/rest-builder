<cfoutput>
<h1 class="page-header">#rc.pageSection# <small>#rc.pageTitle#</small></h1>
          <ol class="breadcrumb">
            <li><a href="/rest-builder/">home</a></li>
			<li><a href="/rest-builder/index.cfm/applications/list">applications</a></li>
			<li><a href="/rest-builder/index.cfm/application/#rc.application#/resources" title="back to #rc.application#">resources</a></li>
			
			<cfif StructKeyExists(rc, 'resource')>
			<li class="active">#rc.resource#</li>
			<!--- <cfelse>
			<li class="active">#request.item#</li> --->
			</cfif>
          </ol>
          
		
		<p>
			#body#	
		</p>
</cfoutput>
<cfdump var="#rc#" label="layout: resources [#cgi.path_info#]">