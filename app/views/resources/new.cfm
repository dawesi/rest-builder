<cfoutput>
<form class="form-horizontal" role="form" action="#buildURL(action='resources.add')#" method="post" >
	<input name="application" class="form-control" id="application" value="#rc.application#" type="hidden">
  <div class="form-group">
    <label for="resource" class="col-lg-2 control-label">Name</label>
    <div class="col-lg-10">
      <input name="resource" class="form-control" id="resource" placeholder="resource name">
    </div>
  </div>

  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
      <button type="submit" class="btn btn-default">Add</button>
    </div>
  </div>
</form>
</cfoutput>