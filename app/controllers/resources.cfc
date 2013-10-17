component {

	function init( fw ) {
		variables.fw = fw;
	}
	
	public void function before( ) {
		rc.pageSection = 'ReST Resources';
	}
	
		public void function startDefault() {
		variables.fw.redirect( action = 'resources.list' );
	}

	public void function endpoints( struct rc ) {

		rc.pageTitle = "endpoints for '#ARGUMENTS.rc.resource#' form application '#ARGUMENTS.rc.application#'";
		rc.path = ExpandPath('src/#ARGUMENTS.rc.application#');
		rc.resources = directorylist(absolute_path=rc.path, recurse=false, listInfo='name');
	}
		
	public void function list( struct rc ) {

		rc.pageTitle = 'for application "#ARGUMENTS.rc.application#"';
		rc.path = ExpandPath('src/#ARGUMENTS.rc.application#');
		rc.resources = directorylist(absolute_path=rc.path, recurse=false, listInfo='name');
	}

	public void function new( struct rc ) {

		rc.pageTitle = 'add new';

		
		//setView()

	}
	
	public void function startAdd( struct rc ) {

		rc.path = ExpandPath('src/#ARGUMENTS.rc.application#/#ARGUMENTS.rc.resource#');
		DirectoryCreate(rc.path);
		
		location( '/rest-builder/index.cfm/application/#ARGUMENTS.rc.application#/resource/#ARGUMENTS.rc.resource#', false);

		
		//setView()

	}	

}