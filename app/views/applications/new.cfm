<form class="form-horizontal" role="form" action="<cfoutput>#buildURL(action='applications.add')#</cfoutput>" method="post" >
  <div class="form-group">
    <label for="application" class="col-lg-2 control-label">Name</label>
    <div class="col-lg-10">
      <input name="application" class="form-control" id="application" placeholder="application name">
    </div>
  </div>

  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
      <button type="submit" class="btn btn-default">Add</button>
    </div>
  </div>
</form>
