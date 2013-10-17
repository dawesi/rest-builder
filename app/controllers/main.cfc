component {

	public void function default( struct rc ) {
		//rc.files = directoryList( expandPath(request.base) & "../examples/", false, "query" );
		
		rc.pageSection = 'ReST Builder';
		rc.pageTitle = 'About';
		
		rc.path = ExpandPath('src');
		rc.apps = directorylist(absolute_path=rc.path, recurse=false, listInfo='name');
	}

	public void function resource( struct rc ) {

		param name=arguments.rc.app default="";
		
		//setView()
		
		rc.path = ExpandPath('src/#ARGUMENTS.rc.app#');
		rc.resources = directorylist(absolute_path=rc.path, recurse=false, listInfo='name');
	}

}