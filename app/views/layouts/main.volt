<header class="main-header">
	<div class="container">
		<div id="header">
			<h1 id="logo">
				<a href="http://demo.mythemeshop.com/ribbon"><img src="library/img/logo/logo.png" alt="Ribbon"></a>
			</h1>
			<!-- END #logo -->
			<div class="widget-header">
				<div class="banner">
					<div class="textwidget"><img src="./img/103642-1335226181.png"></div>
				</div>
			</div>             
		</div>
		<!--#header-->
		<div class="secondary-navigation">
			<nav id="navigation">{{ elements.getMenu() }}</nav>
		</div>
	</div>
	<!--.container-->        
</header>
<div class="main-container"><div id="{{ mainid }}" class="{{ mainclass }}">{{ content() }}</div></div>
<footer>
	<div class="container">
		<div class="footer-widgets">
			<div class="f-widget f-widget-1">
				<div class="widget">
					<h3>Lorem ipsum</h3>
					<div class="textwidget">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum malesuada, nibh quis egestas pellentesque, dui neque sagittis nisl, eget malesuada nunc felis sed augue. Aenean tempor nibh sed diam elementum sollicitudin quis in metus. Praesent tincidunt</div>
				</div>
			</div>
			<div class="f-widget f-widget-2">
				<div class="widget">
					<h3>Latest Tweets</h3>
					<ul id="twitter_update_list_665" class="tweets">
						<li><p></p></li>
					</ul>
					<a href="http://twitter.com/mythemeshopteam" class="twitter-follow">Follow on Twitter</a>
				</div>	
			</div>
			<div class="f-widget last">
				<div class="widget">
					<form method="get" id="searchform" class="search-form" action="http://demo.mythemeshop.com/ribbon" _lpchecked="1">
						<fieldset>
							<input type="text" name="s" id="s" value="Search this site..." onblur="if (this.value == '') {this.value = 'Search this site...';}" onfocus="if (this.value == 'Search this site...') {this.value = '';}">
							<input type="submit" value="Search" onclick="if(this.value=='Search this Site...')this.value='';">
						</fieldset>
					</form>
				</div>
				<div class="widget">
					<h3>Recent Posts</h3>
					<ul>
						<li>
							<a href="http://demo.mythemeshop.com/ribbon/2012/05/20/how-twitter-works-all-you-need-to-know-about-twitter/" title="Class Aptent Taciti Aociosqu Ad Litora Torquent Per">Class Aptent Taciti Aociosqu Ad Litora Torquent Per</a>
						</li>
						<li>
							<a href="http://demo.mythemeshop.com/ribbon/2012/05/16/facebook-buys-lightbox-an-android-photo-sharing-app/" title="Eget Malesuada Nunc Delis Sed Augue Aenean">Eget Malesuada Nunc Delis Sed Augue Aenean</a>
						</li>
					</ul>
				</div>	
			</div>
		</div>
		<!--.footer-widgets-->
	</div>
	<!--.container-->
	<div class="copyrights">
		<!--start copyrights-->
		<div class="row" id="copyright-note">
			<span><a href="./img/Ribbon.htm" title="Just another MyThemeShop Playground site">Ribbon</a> Copyright © 2013.</span>
			<div class="top">Theme by <a href="http://mythemeshop.com/">MyThemeShop</a>. <a href="http://demo.mythemeshop.com/ribbon/#top" class="toplink">Back to Top ↑</a></div>
		</div>
		<!--end copyrights-->
	</div> 
</footer>
