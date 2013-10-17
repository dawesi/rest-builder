<cfoutput>
			<h1 class="page-header">#rc.pageSection# <small>#rc.pageTitle#</small></h1>
			<ol class="breadcrumb">
				<li><a href="/rest-builder/">home</a></li>
			
				<cfif request.item != 'list'>
				<li><a href="/rest-builder/index.cfm/applications/list">applications</a></li>
				<li class="active"><cfoutput>#request.item#</cfoutput></li>
				<cfelse>
				<li class="active">applications</li>
				</cfif>
			</ol>
			
			
			<p>
			#body#		
			</p>
</cfoutput>
<cfdump var="#rc#" label="layout: applications [#cgi.path_info#]">

<cfdump var="#request#" label="request" expand="false">