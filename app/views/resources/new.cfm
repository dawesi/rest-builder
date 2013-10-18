<cfoutput>
<form class="form-horizontal" role="form" action="#buildURL(action='resources.add')#" method="post" >
	<input name="application" class="form-control" id="application" value="#rc.application#" type="hidden">
  
	<div class="form-group">
		<label for="resource" class="col-lg-2 control-label">Name</label>
		<div class="col-lg-10">
			<input name="resource" class="form-control" id="resource" placeholder="resource name">
		</div>
		
		<label for="description" class="col-lg-2 control-label">Description</label>
		<div class="col-lg-10">
			<input name="description" class="form-control" id="description" placeholder="">
		</div>
		
		<label for="version" class="col-lg-2 control-label">Version</label>
		<div class="col-lg-10">
			<input name="version" class="form-control" id="version" placeholder="0.1">
		</div>
		
		<label for="baseUri" class="col-lg-2 form control-label">baseUri</label>
		<div class="col-lg-10">
			<input name="baseUriDomain"       class="col-lg-5" placeholder="https://api.company.com">
			<span class="col-lg-1">/</span>
			<input name="baseUriRailoMapping" class="col-lg-2" placeholder="rest">
			<span class="col-lg-2">/#rc.application#</span>
		</div>
	</div>

	<div class="form-group">
		<div class="col-lg-offset-2 col-lg-10">
		<button type="submit" class="btn btn-default">Add</button>
		</div>
	</div>
</form>
</cfoutput>