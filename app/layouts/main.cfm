<h1 class="page-header"><cfoutput>#rc.pageSection# <small>#rc.pageTitle#</small></cfoutput></h1>
          <ol class="breadcrumb">
            <li><a href="/rest-builder/">Home</a></li>
			
			<li><cfoutput><a href="#buildURL(action=request.section)#">#request.section#</a></cfoutput></li>
			<li class="active"><cfoutput>#request.item#</cfoutput></li>

          </ol>
          
		
		<p>
			<cfoutput>#body#</cfoutput>		
		</p>