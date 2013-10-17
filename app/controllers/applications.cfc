component {

	function init( fw ) {
		variables.fw = fw;
	}
	
	public void function before( ) {
		rc.pageSection = 'ReST Applications';
	}
	
	public void function startDefault() {
		variables.fw.redirect( action = 'applications.list' );
	}
	
	public void function list( struct rc ) {

		
		
		rc.pageTitle = 'List';
		rc.path = ExpandPath('src/');
		rc.apps = Directorylist(absolute_path=rc.path, recurse=false, listInfo='name');
	}

	public void function new( struct rc ) {

		rc.pageTitle = 'add new';

		
		//setView()

	}
	
	public void function startAdd( struct rc ) {

		rc.path = ExpandPath('src/#ARGUMENTS.rc.application#');
		DirectoryCreate(rc.path);
		
		variables.fw.redirect( action = 'resources.list',queryString='application='&#ARGUMENTS.rc.application# );

		
		//setView()

	}	

}