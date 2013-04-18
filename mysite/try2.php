<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Bootstrap, from Twitter</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<!-- Le styles -->
		<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
		<style type="text/css">
			body { padding-top: 60px; padding-bottom: 40px; }
		</style>
		<link href="http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
		<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<!-- Le fav and touch icons -->
		<link rel="shortcut icon" href="http://twitter.github.com/bootstrap/assets/images/favicon.ico">
		<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="http://twitter.github.com/bootstrap/assets/images/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="http://twitter.github.com/bootstrap/assets/images/apple-touch-icon-114x114.png">
		<script src="http://code.jquery.com/jquery.min.js"></script>
	</head>
	<body>
		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container-fluid">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</a>
					<a class="brand" href="#">Project name</a>
					<div class="nav-collapse">
						<ul class="nav">
							<li class="active"><a href="#">Home</a></li>
							<li><a href="#about">About</a></li>
							<li><a href="#contact">Contact</a></li>
						</ul>
						<p class="navbar-text pull-right">Logged in as <a href="#">username</a></p>
						</div><!--/.nav-collapse -->
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span3">
						<div class="well sidebar-nav">
							<ul class="nav nav-list">
								<li class="nav-header">Sidebar</li>
								<li class="active"><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li class="nav-header">Sidebar</li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li class="nav-header">Sidebar</li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
							</ul>
							</div><!--/.well -->
							</div><!--/span-->
							<div class="span9">
								<div class="span6">
									<table class="table table-striped table-condensed">
										<thead>
											<tr>
												<th>Username</th>
												<th>Date registered</th>
												<th>Role</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Donna R. Folse</td>
												<td>2012/05/06</td>
												<td>Editor</td>
												<td><span class="label label-success">Active</span>
												</td>
											</tr>
											<tr>
												<td>Emily F. Burns</td>
												<td>2011/12/01</td>
												<td>Staff</td>
												<td><span class="label label-important">Banned</span></td>
											</tr>
											<tr>
												<td>Andrew A. Stout</td>
												<td>2010/08/21</td>
												<td>User</td>
												<td><span class="label">Inactive</span></td>
											</tr>
											<tr>
												<td>Mary M. Bryan</td>
												<td>2009/04/11</td>
												<td>Editor</td>
												<td><span class="label label-warning">Pending</span></td>
											</tr>
											<tr>
												<td>Mary A. Lewis</td>
												<td>2007/02/01</td>
												<td>Staff</td>
												<td><span class="label label-success">Active</span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- Main Area -->
								<div id="main_area">
									<!-- Slider -->
									<div class="row-fluid">
										<div class="span12" id="slider">
											<!-- Top part of the slider -->
											<div class="row">
												<div class="span8" id="carousel-bounding-box">
													<div id="myCarousel" class="carousel slide">
														<!-- Carousel items -->
														<div class="carousel-inner">
															<div class="active item" data-slide-number="0"><img src="http://placehold.it/770x300&text=one" /></div>
															<div class="item" data-slide-number="1"><img src="http://placehold.it/770x300&text=two" /></div>
															<div class="item" data-slide-number="2"><img src="http://placehold.it/770x300&text=three" /></div>
															<div class="item" data-slide-number="3"><img src="http://placehold.it/770x300&text=four" /></div>
															<div class="item" data-slide-number="4"><img src="http://placehold.it/770x300&text=five" /></div>
															<div class="item" data-slide-number="5"><img src="http://placehold.it/770x300&text=six" /></div>
														</div>
														<!-- Carousel nav -->
														<a class="carousel-control left" href="#myCarousel" data-slide="prev">‹</a>
														<a class="carousel-control right" href="#myCarousel" data-slide="next">›</a>
													</div>
												</div>
												<div class="span4" id="carousel-text"></div>
												
												<div style="display: none;" id="slide-content">
													<div id="slide-content-0">
														<h2>Slider One</h2>
														<p>Lorem Ipsum Dolor</p>
														<p class="sub-text">October 24 2012 - <a href="#">Read more</a></p>
													</div>
													<div id="slide-content-1">
														<h2>Slider Two</h2>
														<p>Lorem Ipsum Dolor</p>
														<p class="sub-text">October 24 2012 - <a href="#">Read more</a></p>
													</div>
													<div id="slide-content-2">
														<h2>Slider Three</h2>
														<p>Lorem Ipsum Dolor</p>
														<p class="sub-text">October 24 2012 - <a href="#">Read more</a></p>
													</div>
													<div id="slide-content-3">
														<h2>Slider Four</h2>
														<p>Lorem Ipsum Dolor</p>
														<p class="sub-text">October 24 2012 - <a href="#">Read more</a></p>
													</div>
													<div id="slide-content-4">
														<h2>Slider Five</h2>
														<p>Lorem Ipsum Dolor</p>
														<p class="sub-text">October 24 2012 - <a href="#">Read more</a></p>
													</div>
													<div id="slide-content-5">
														<h2>Slider Six</h2>
														<p>Lorem Ipsum Dolor</p>
														<p class="sub-text">October 24 2012 - <a href="#">Read more</a></p>
													</div>
												</div>
											</div>
											
										</div>
										</div> <!--/Slider-->
										
										<div class="row hidden-phone" id="slider-thumbs">
											<div class="span12">
												<!-- Bottom switcher of slider -->
												<ul class="thumbnails">
													<li class="span2">
														<a class="thumbnail" id="carousel-selector-0">
														<img src="http://placehold.it/170x100&text=one" />
														</a>
													</li>
													<li class="span2">
														<a class="thumbnail" id="carousel-selector-1">
														<img src="http://placehold.it/170x100&text=two" />
														</a>
													</li>
													<li class="span2">
														<a class="thumbnail" id="carousel-selector-2">
														<img src="http://placehold.it/170x100&text=three" />
														</a>
													</li>
													<li class="span2">
														<a class="thumbnail" id="carousel-selector-3">
														<img src="http://placehold.it/170x100&text=four" />
														</a>
													</li>
													<li class="span2">
														<a class="thumbnail" id="carousel-selector-4">
														<img src="http://placehold.it/170x100&text=five" />
														</a>
													</li>
													<li class="span2">
														<a class="thumbnail" id="carousel-selector-5">
														<img src="http://placehold.it/170x100&text=six" />
														</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<script>
									jQuery(document).ready(function($) {
									
									$('#myCarousel').carousel({
									interval: 5000
									});
									
									$('#carousel-text').html($('#slide-content-0').html());
									
									//Handles the carousel thumbnails
									$('[id^=carousel-selector-]').click( function(){
									var id_selector = $(this).attr("id");
									var id = id_selector.substr(id_selector.length -1);
									var id = parseInt(id);
									$('#myCarousel').carousel(id);
									});
									
									
									// When the carousel slides, auto update the text
									$('#myCarousel').on('slid', function (e) {
									var id = $('.item.active').data('slide-number');
									$('#carousel-text').html($('#slide-content-'+id).html());
									});
									
									
									});
									</script>
									<div class="row">
										<div class="span8">
											<div class="row">
												<div class="span8">
													<h4><strong><a href="#">Title of the post</a></strong></h4>
												</div>
											</div>
											<div class="row">
												<div class="span2">
													<a href="#" class="thumbnail">
													<img src="http://placehold.it/260x180" alt="">
													</a>
												</div>
												<div class="span6">
													<p>
													Lorem ipsum dolor sit amet, id nec conceptam conclusionemque. Et eam tation option. Utinam salutatus ex eum. Ne mea dicit tibique facilisi, ea mei omittam explicari conclusionemque, ad nobis propriae quaerendum sea.
													</p>
													<p><a class="btn" href="#">Read more</a></p>
												</div>
											</div>
											<div class="row">
												<div class="span8">
													<p></p>
													<p>
													<i class="icon-user"></i> by <a href="#">John</a>
													| <i class="icon-calendar"></i> Sept 16th, 2012
													| <i class="icon-comment"></i> <a href="#">3 Comments</a>
													| <i class="icon-share"></i> <a href="#">39 Shares</a>
													| <i class="icon-tags"></i> Tags : <a href="#"><span class="label label-info">Snipp</span></a>
													<a href="#"><span class="label label-info">Bootstrap</span></a>
													<a href="#"><span class="label label-info">UI</span></a>
													<a href="#"><span class="label label-info">growth</span></a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<hr>
									
									<div class="row">
										<div class="span8">
											<div class="row">
												<div class="span8">
													<h4><strong><a href="#">Title of the post</a></strong></h4>
												</div>
											</div>
											<div class="row">
												<div class="span2">
													<a href="#" class="thumbnail">
													<img src="http://placehold.it/260x180" alt="" width="260" height="180">
													</a>
												</div>
												<div class="span6">

													<p>
													Lorem ipsum dolor sit amet, id nec conceptam conclusionemque. Et eam tation option. Utinam salutatus ex eum. Ne mea dicit tibique facilisi, ea mei omittam explicari conclusionemque, ad nobis propriae quaerendum sea.
													</p>
												</div>
											</div>

											<div class="row">
												<div class="span8">
													<p>sss</p>
													<p>
													<i class="icon-user"></i> by <a href="#">Mark</a>
													| <i class="icon-calendar"></i> Sept 16th, 2012
													| <i class="icon-comment"></i> <a href="#">3 Comments</a>
													| <i class="icon-share"></i> <a href="#">39 Shares</a>
													| <i class="icon-tags"></i> Tags : <a href="#"><span class="label label-info">Snipp</span></a>
													<a href="#"><span class="label label-info">Bootstrap</span></a>
													<a href="#"><span class="label label-info">UI</span></a>
													<a href="#"><span class="label label-info">growth</span></a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<hr>
									
									<div class="row">
										<div class="span8">
											<div class="row">
												<div class="span8">
													<h4><strong><a href="#">Title of the post</a></strong></h4>
												</div>
											</div>
											<div class="row">
												<div class="span2">
													<a href="#" class="thumbnail">
													<img src="http://placehold.it/260x180" alt="">
													</a>
												</div>
												<div class="span6">
													<p>
													Lorem ipsum dolor sit amet, id nec conceptam conclusionemque. Et eam tation option. Utinam salutatus ex eum. Ne mea dicit tibique facilisi, ea mei omittam explicari conclusionemque, ad nobis propriae quaerendum sea.
													</p>
													<p><a href="#">Read more</a></p>
												</div>
											</div>
											<div class="row">
												<div class="span8">
													<p></p>
													<p>
													<i class="icon-user"></i> by <a href="#">Mark</a>
													| <i class="icon-calendar"></i> Sept 16th, 2012
													| <i class="icon-comment"></i> <a href="#">3 Comments</a>
													| <i class="icon-share"></i> <a href="#">39 Shares</a>
													| <i class="icon-tags"></i> Tags : <a href="#"><span class="label label-info">Snipp</span></a>
													<a href="#"><span class="label label-info">Bootstrap</span></a>
													<a href="#"><span class="label label-info">UI</span></a>
													<a href="#"><span class="label label-info">growth</span></a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<hr>
									<div class="hero-unit">
										<h1>Hello, world!</h1>
										<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
										<p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
									</div>
									<div class="row-fluid">
										<div class="span4">
											<h2>Heading</h2>
											<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
											<p><a class="btn" href="#">View details &raquo;</a></p>
											</div><!--/span-->
											<div class="span4">
												<div class="row-fluid">

												</div>
												</div><!--/span-->
												<div class="span4">
													<h2>Heading</h2>
													<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
													<p><a class="btn" href="#">View details &raquo;</a></p>
													</div><!--/span-->
													</div><!--/row-->
													<div class="row-fluid">
														<div class="span4">
															<h2>Heading</h2>
															<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
															<p><a class="btn" href="#">View details &raquo;</a></p>
															</div><!--/span-->
															<div class="span4">
																<h2>Heading</h2>
																<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
																<p><a class="btn" href="#">View details &raquo;</a></p>
																</div><!--/span-->
																<div class="span4">
																	<h2>Heading</h2>
																	<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
																	<p><a class="btn" href="#">View details &raquo;</a></p>
																	</div><!--/span-->
																	</div><!--/row-->
																	</div><!--/span-->
																	</div><!--/row-->
																	<hr>
																	<footer>
																		<p>&copy; Company 2012</p>
																	</footer>
																	</div><!--/.fluid-container-->
																	<!-- Le javascript
																	================================================== -->
																	<!-- Placed at the end of the document so the pages load faster -->
																	
																	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-transition.js"></script>
																	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-alert.js"></script>
																	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-modal.js"></script>
																	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-dropdown.js"></script>
																	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-scrollspy.js"></script>
																	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-tab.js"></script>
																	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-tooltip.js"></script>
																	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-popover.js"></script>
																	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-button.js"></script>
																	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-collapse.js"></script>
																	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-carousel.js"></script>
																	<script src="https://raw.github.com/twitter/bootstrap/master/js/bootstrap-typeahead.js"></script>
																</body>
															</html>