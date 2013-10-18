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

	}
		
	public void function list( struct rc ) {

		rc.pageTitle = 'for application "#ARGUMENTS.rc.application#"';
		rc.path = ExpandPath('src/#ARGUMENTS.rc.application#');
		
		//rc.resources = directorylist(absolute_path=rc.path, recurse=false, listInfo='name');
		directory action="list" name ="rc.resources" directory="#rc.path#" type="dir" listinfo="name";
		rc.resources=valuearray(rc.resources.name)
	}

	public void function new( struct rc ) {

		rc.pageTitle = 'add new';

		
		//setView()

	}
	
	public void function startAdd( struct rc ) {

		rc.path = ExpandPath('src/#ARGUMENTS.rc.application#/#ARGUMENTS.rc.resource#');
		DirectoryCreate(rc.path);
		
		rc.baseUri = ReplaceNoCase('#ARGUMENTS.rc.baseUriDomain#/#ARGUMENTS.rc.baseUriRailoMapping#/#ARGUMENTS.rc.application#/#ARGUMENTS.rc.resource#', '//', '/', 'ALL');


		rc.raml = '##%RAML 0.8
---
title: #rc.description#
version: #rc.version#
baseUri: #rc.baseUri#
		';

		FileWrite(ExpandPath('src/#ARGUMENTS.rc.application#/#ARGUMENTS.rc.resource#.raml'), rc.raml);
		

		location( '/rest-builder/index.cfm/application/#ARGUMENTS.rc.application#/resource/#ARGUMENTS.rc.resource#', false);

	}	

}