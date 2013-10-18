<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Build ReST Webservices for Railo">
    <meta name="author" content="andrew@webonix.net">
	
	<!-- http://startbootstrap.com/templates/modern-business/sidebar --->

    <title>ReST Builder</title>

    <!-- Bootstrap core CSS -->
    <link href="/rest-builder/app/bootstrap/modern-business/css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="/rest-builder/app/bootstrap/modern-business/css/modern-business.css" rel="stylesheet">
    <link href="/rest-builder/app/bootstrap/modern-business/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- You'll want to use a responsive image option so this logo looks good on devices - I recommend using something like retina.js (do a quick Google search for it and you'll find it) -->
          <a class="navbar-brand" href="index.html">ReST Builder</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="http://getrailo.org" target="_blank">Get Railo</a></li>
            <li><a href="http://webonix.net" target="_blank">Webonix</a></li>
            <li><a href="http://raml.org/index.html" target="_blank">RAML</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Resources <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="http://getbootstrap.com/" target="_blank">Bootstrap 3</a></li>
                <li><a href="http://jquery.com/" target="_blank">jQuery 2</a></li>
                <li><a href="https://github.com/framework-one/fw1/wiki" target="_blank">FW/1</a></li>
				
				<li><a href="https://github.com/raml-org/raml-spec/wiki/RAML&amp;trade;-Version-0.8:-RESTful-API-Modeling-Language" target="_blank">RAML wiki v0.8</a></li>
				
				<li><a href="http://jyaml.sourceforge.net/tutorial.html" target="_blank">jyaml</a></li>
				

              </ul>
            </li>
<!---             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="blog-home-1.html">Blog Home 1</a></li>
                <li><a href="blog-home-2.html">Blog Home 2</a></li>
                <li><a href="blog-post.html">Blog Post</a></li>
              </ul>
            </li> --->
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="full-width.html">Full Width Page</a></li>
                <li class="active"><a href="sidebar.html">Sidebar Page</a></li>
                <li><a href="faq.html">FAQ</a></li>
                <li><a href="404.html">404</a></li>
                <li><a href="pricing.html">Pricing Table</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav>

    <!-- Page Content -->

    <div class="container">
      
      <div class="row">
        <div class="col-md-3 col-sm-4 sidebar" >
            <ul class="nav nav-stacked nav-pills" >
				<cfoutput>
				<li><a href="/rest-builder/">Home</a></li>
				
				<li class="disabled"><a href="##">ReST Applications</a></li>
				<li><a href="#buildURL(action='applications.list')#">List</a></li>
				<li><a href="#buildURL(action='applications.new')#">Add new</a></li>
				
				<li class="disabled"><a href="##">System</a></li>
				<li><a href="/rest-builder/?reload=true">Reload FW/1</a></li>
				
				<li class="disabled"><a href="##">YAML</a></li>
				<li><a href="/rest-builder/index.cfm/yaml">Parse RAML</a></li>
			
				</cfoutput><!--- 
              <li class="disabled"><a href="#">Portfolio</a></li>
              <li><a href="portfolio-1-col.html">1 Column Portfolio</a></li>
              <li><a href="portfolio-2-col.html">2 Column Portfolio</a></li>
              <li><a href="portfolio-3-col.html">3 Column Portfolio</a></li>
              <li><a href="portfolio-4-col.html">4 Column Portfolio</a></li>
              <li><a href="portfolio-item.html">Single Portfolio Item</a></li>
              <li class="disabled"><a href="#">Blog</a></li>
              <li><a href="blog-home-1.html">Blog Home 1</a></li>
              <li><a href="blog-home-2.html">Blog Home 2</a></li>
              <li><a href="blog-post.html">Blog Post</a></li>
              <li class="disabled"><a href="#">Blog</a></li>
              <li><a href="full-width.html">Full Width Page</a></li>
              
              <li><a href="faq.html">FAQ</a></li>
              <li><a href="404.html">404</a></li> --->
              
            </ul>
        </div>
      
        <div class="col-md-9 col-sm-8">
          <cfoutput>#body#</cfoutput>	
        </div>

      </div><!-- /.row -->

    </div><!-- /.container --> 
	<!-- //Page Content -->

    <div class="container">

      <hr>

      <footer>
        <div class="row">
          <div class="col-lg-12">
				<a href="https://github.com/webonix/rest-builder" target="_blank">ReST Builder</a><!---  is copyright (c) Andrew J Mercer 2013 ---> - <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Licensed under the Apache License, Version 2.0</a>
				<a href="https://github.com/framework-one/fw1/wiki" target="_blank">FW/1</a> is copyright (c) 2009-2010 Sean Corfield, Ryan Cogswell - 
				<a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Licensed under the Apache License, Version 2.0</a>
				<br />
				You are running FW/1 version <cfoutput>#variables.framework.version# on Railo #server.railo.version#</cfoutput>.
          </div>
        </div>
      </footer>

    </div><!-- /.container -->

    <!-- Bootstrap core JavaScript -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/rest-builder/app/bootstrap/modern-business/js/jquery-2.0.3.js"></script>
    <script src="/rest-builder/app/bootstrap/modern-business/js/bootstrap.js"></script>
    <script src="/rest-builder/app/bootstrap/modern-business/js/modern-business.js"></script>
  </body>
</html>