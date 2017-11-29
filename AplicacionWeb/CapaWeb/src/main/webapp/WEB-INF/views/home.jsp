<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8" />
<title>Digital Store</title>
<meta name="description" content="Shop powered by PrestaShop" />
<meta name="generator" content="PrestaShop" />
<meta name="robots" content="index,follow" />
<meta name="viewport"
	content="width=device-width, minimum-scale=0.25, maximum-scale=1, initial-scale=1.0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<link rel="icon" type="image/vnd.microsoft.icon"
	href="http://demo.etssoft.net/digital/img/favicon.ico?1479470830" />
<link rel="shortcut icon" type="image/x-icon"
	href="http://demo.etssoft.net/digital/img/favicon.ico?1479470830" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/owl/owl.carousel.css"
	type="text/css" media="all" />

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/global.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/autoload/highdpi.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/autoload/responsive-tables.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/autoload/uniform.default.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/js/jquery/plugins/fancybox/jquery.fancybox.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/product_list.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blockbestsellers/blockbestsellers.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blockcart/blockcart.css"
	type="text/css" media="all" />

<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/js/jquery/plugins/bxslider/jquery.bxslider.css"
	type="text/css" media="all" />

<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blockcategories/blockcategories.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blockcurrencies/blockcurrencies.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blocklanguages/blocklanguages.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blockcontact/blockcontact.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blockmyaccountfooter/blockmyaccount.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blocknewproducts/blocknewproducts.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blocknewsletter/blocknewsletter.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blockspecials/blockspecials.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blocktags/blocktags.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blockuserinfo/blockuserinfo.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blockviewed/blockviewed.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/homefeatured/homefeatured.css"
	type="text/css" media="all" />

<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/modules/ybc_blog/css/prettyPhoto.css"
	type="text/css" media="all" />


<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/ybc_blog/css/blog.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/modules/ybc_blog/css/owl.carousel.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/modules/ybc_blog/css/owl.theme.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/ybc_blocksearch/blocksearch.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/ybc_manufacturer/css/ybcmnf.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/ybc_megamenu/css/ybc_megamenu.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/modules/ybc_nivoslider/css/nivo/themes/default/default.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/ybc_nivoslider/css/nivo/nivo-slider.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/modules/ybc_nivoslider/css/animate.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/blockwishlist/blockwishlist.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/productcomments/productcomments.css"
	type="text/css" media="all" />

<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/modules/ybc_productimagehover/css/productimagehover.css"
	type="text/css" media="all" />

<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/ybc_widget/css/widget.css"
	type="text/css" media="all" />

<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/modules/ybc_newsletter/css/newsletter.css"
	type="text/css" media="all" />


<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/modules/ybc_themeconfig/css/font-awesome.css"
	type="text/css" media="all" />


<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/modules/ybc_themeconfig/css/owl/owl.carousel.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/modules/ybc_themeconfig/css/owl/owl.theme.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/modules/ybc_themeconfig/css/elegant-font.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/modules/ybc_themeconfig/css/owl/owl.transitions.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,200,800,900"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Arimo:400,300,500,600,700,200,800,900"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/modules/ybc_themeconfig/css/themeconfig.css"
	type="text/css" media="all" />
<script type="text/javascript">
	var CUSTOMIZE_TEXTFIELD = 1;
	var FancyboxI18nClose = 'Close';
	var FancyboxI18nNext = 'Next';
	var FancyboxI18nPrev = 'Previous';
	var YBC_TC_FLOAT_CSS3 = 1;
	var added_to_wishlist = 'The product was successfully added to your wishlist.';
	var ajax_allowed = true;
	var ajaxsearch = true;
	var baseDir = 'http://demo.etssoft.net/digital/';
	var baseUri = 'http://demo.etssoft.net/digital/';
	var blocksearch_type = 'top';
	var comparator_max_item = 3;
	var comparedProductsIds = [];
	var contentOnly = false;
	var currency = {
		"id" : 1,
		"name" : "Dollar",
		"iso_code" : "USD",
		"iso_code_num" : "840",
		"sign" : "$",
		"blank" : "0",
		"conversion_rate" : "1.000000",
		"deleted" : "0",
		"format" : "1",
		"decimals" : "1",
		"active" : "1",
		"prefix" : "$ ",
		"suffix" : "",
		"id_shop_list" : null,
		"force_id" : false
	};
	var currencyBlank = 0;
	var currencyFormat = 1;
	var currencyRate = 1;
	var currencySign = '$';
	var customizationIdMessage = 'Customization #';
	var day = 'day';
	var days = 'days';
	var delete_txt = 'Delete';
	var displayList = false;
	var freeProductTranslation = 'Free!';
	var freeShippingTranslation = 'Free shipping!';
	var generated_date = 1479743888;
	var hasDeliveryAddress = false;
	var highDPI = false;
	var hr = 'hour';
	var hrs = 'hours';
	var id_lang = 1;
	var img_dir = 'http://demo.etssoft.net/digital/themes/digitalstore/img/';
	var instantsearch = false;
	var isGuest = 0;
	var isLogged = 0;
	var isMobile = false;
	var loggin_required = 'You must be logged in to manage your wishlist.';
	var max_item = 'You cannot add more than 3 product(s) to the product comparison';
	var min = 'min';
	var min_item = 'Please select at least one product';
	var mins = 'mins';
	var mywishlist_url = 'login9f97.html';
	var page_name = 'index';
	var placeholder_blocknewsletter = 'Enter your email...';
	var priceDisplayMethod = 1;
	var priceDisplayPrecision = 2;
	var quickView = true;
	var removingLinkText = 'remove this product from my cart';
	var roundMode = 2;
	var search_url = 'search.html';
	var sec = 'sec';
	var secs = 'secs';
	var static_token = 'dbbedd8ed700d9ef761f48e09e12c6f0';
	var toBeDetermined = 'To be determined';
	var token = 'b284f871ab4162843da01d0e0867863c';
	var usingSecureMode = false;
	var wishlistProductsIds = false;
</script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/js/jquery/jquery-1.11.0.min.js"></script>


<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/js/jquery/jquery-migrate-1.2.1.min.js"></script>

<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/js/jquery/plugins/jquery.easing.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/js/tools.js"></script>

<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/themes/digitalstore/js/global.js"></script>

<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/themes/digitalstore/js/autoload/10-bootstrap.min.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/themes/digitalstore/js/autoload/15-jquery.total-storage.min.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/themes/digitalstore/js/autoload/15-jquery.uniform-modified.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/js/jquery/plugins/fancybox/jquery.fancybox.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/themes/digitalstore/js/products-comparison.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/themes/digitalstore/js/modules/blockcart/ajax-cart.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/js/jquery/plugins/jquery.scrollTo.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/js/jquery/plugins/jquery.serialScroll.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/js/jquery/plugins/bxslider/jquery.bxslider.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/themes/digitalstore/js/tools/treeManagement.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/themes/digitalstore/js/modules/blocknewsletter/blocknewsletter.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_blog/js/owl.carousel.js"></script>


<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_blog/js/jquery.prettyPhoto.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/themes/digitalstore/js/modules/ybc_blog/blog.js"></script>

<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_blocksearch/blocksearch.js"></script>


<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/themes/digitalstore/js/modules/ybc_blocksearch/autocomplete.js"></script>

<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_manufacturer/js/ybcmnf.js"></script>

<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_megamenu/js/ybc_megamenu.js"></script>

<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_nivoslider/js/jquery.nivo.slider.js"></script>


<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_nivoslider/js/ybcnivoslider.js"></script>

<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/themes/digitalstore/js/modules/blockwishlist/js/ajax-wishlist.js"></script>

<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_newsletter/js/newsletter.js"></script>

<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_themeconfig/js/wow.min.js"></script>

<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_themeconfig/js/owl.carousel.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_themeconfig/js/ybctab.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_themeconfig/js/ybc_themeconfig_frontend.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/themes/digitalstore/js/index.js"></script>
<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_specificprices/js/jquery.countdown.min.js"></script>

<script type="text/javascript"
	src="resources/template/demo.etssoft.net/digital/modules/ybc_specificprices/js/specific_prices.js"></script>
<style>
.ybc_blog_layout_large_grid .ybc-blog-list li:nth-child(n+2) .post-wrapper,
	.ybc_blog_layout_grid .ybc-blog-list .post-wrapper {
	min-height: 500px;
}
</style>
<style>
@media ( min-width : 768px) {
	.ybc-menu-column-size-1_12 {
		width: 8.3333%;
	}
	.ybc-menu-column-size-2_12 {
		width: 16.6667%;
	}
	.ybc-menu-column-size-3_12 {
		width: 25%;
	}
	.ybc-menu-column-size-4_12 {
		width: 33.3333%;
	}
	.ybc-menu-column-size-5_12 {
		width: 41.6667%;
	}
	.ybc-menu-column-size-6_12 {
		width: 50%;
	}
	.ybc-menu-column-size-7_12 {
		width: 58.3333%;
	}
	.ybc-menu-column-size-8_12 {
		width: 66.6667%;
	}
	.ybc-menu-column-size-9_12 {
		width: 75%;
	}
	.ybc-menu-column-size-10_12 {
		width: 83.3333%;
	}
	.ybc-menu-column-size-11_12 {
		width: 91.6667%;
	}
	.ybc-menu-column-size-12_12 {
		width: 100%;
	}
	#ybc-menu-10 .ybc-menu-columns-wrapper, #ybc-menu-10 .ybc-menu-has-sub.ybc-menu-item:hover .ybc-menu-item-link:before,
		#ybc-menu-10 .ybc-ul-category.ybc-mm-control-content.ybc-sub-categories
		{
		background: #FFFFFF;
	}
	.ybc-menu-wrapper #ybc-menu-main-content #ybc-menu-10 .ybc-menu-item-link:after,
		.ybc-menu-wrapper #ybc-menu-main-content #ybc-menu-10 .ybc-menu-item-no-link:after
		{
		border-bottom-color: #FFFFFF;
	}
	#ybc-menu-11 .ybc-menu-columns-wrapper, #ybc-menu-11 .ybc-menu-has-sub.ybc-menu-item:hover .ybc-menu-item-link:before,
		#ybc-menu-11 .ybc-ul-category.ybc-mm-control-content.ybc-sub-categories
		{
		background: #FFFFFF;
	}
	.ybc-menu-wrapper #ybc-menu-main-content #ybc-menu-11 .ybc-menu-item-link:after,
		.ybc-menu-wrapper #ybc-menu-main-content #ybc-menu-11 .ybc-menu-item-no-link:after
		{
		border-bottom-color: #FFFFFF;
	}
	#ybc-menu-12 h6, #ybc-menu-12 .ybc-menu-columns-wrapper h6 a {
		color: #333333;
	}
	#ybc-menu-12 .ybc-menu-block-bottom, #ybc-menu-12 .ybc-menu-block p,
		#ybc-menu-12 .ybc_description_block p, #ybc-menu-12 .ybc_description_block,
		#ybc-menu-12 .ybc-menu-columns-wrapper a {
		color: #777777;
	}
	#ybc-menu-12 .ybc-mm-price {
		color: #FF564B;
	}
	#ybc-menu-12 .ybc-mm-discount-percent {
		background: #FF564B;
	}
	#ybc-menu-12 .ybc-menu-block-bottom ul li, #ybc-menu-12 h6, #ybc-menu-12 .ybc-mm-product-img-link,
		#ybc-menu-12 .ybc-menu-columns-wrapper {
		border-color: #DDDDDD;
	}
	#ybc-menu-12 .ybc-menu-columns-wrapper, #ybc-menu-12 .ybc-menu-has-sub.ybc-menu-item:hover .ybc-menu-item-link:before,
		#ybc-menu-12 .ybc-ul-category.ybc-mm-control-content.ybc-sub-categories
		{
		background: #FFFFFF;
	}
	.ybc-menu-wrapper #ybc-menu-main-content #ybc-menu-12 .ybc-menu-item-link:after,
		.ybc-menu-wrapper #ybc-menu-main-content #ybc-menu-12 .ybc-menu-item-no-link:after
		{
		border-bottom-color: #FFFFFF;
	}
	#ybc-menu-13 h6, #ybc-menu-13 .ybc-menu-columns-wrapper h6 a {
		color: #333333;
	}
	#ybc-menu-13 .ybc-menu-block-bottom, #ybc-menu-13 .ybc-menu-block p,
		#ybc-menu-13 .ybc_description_block p, #ybc-menu-13 .ybc_description_block,
		#ybc-menu-13 .ybc-menu-columns-wrapper a {
		color: #777777;
	}
	#ybc-menu-13 .ybc-mm-price {
		color: #FF564B;
	}
	#ybc-menu-13 .ybc-mm-discount-percent {
		background: #FF564B;
	}
	#ybc-menu-13 .ybc-menu-block-bottom ul li, #ybc-menu-13 h6, #ybc-menu-13 .ybc-mm-product-img-link,
		#ybc-menu-13 .ybc-menu-columns-wrapper {
		border-color: #DDDDDD;
	}
	#ybc-menu-13 .ybc-menu-columns-wrapper, #ybc-menu-13 .ybc-menu-has-sub.ybc-menu-item:hover .ybc-menu-item-link:before,
		#ybc-menu-13 .ybc-ul-category.ybc-mm-control-content.ybc-sub-categories
		{
		background: #FFFFFF;
	}
	.ybc-menu-wrapper #ybc-menu-main-content #ybc-menu-13 .ybc-menu-item-link:after,
		.ybc-menu-wrapper #ybc-menu-main-content #ybc-menu-13 .ybc-menu-item-no-link:after
		{
		border-bottom-color: #FFFFFF;
	}
}
</style>
<style>
@media ( min-width :768px) {
	.ybc-menu-skin-custom #ybc-menu-main-content, .fixed-full.position-fixed-scroll.ybc-menu-skin-custom
		{
		background-color:;
	}
	.ybc-menu-layout-classic.ybc-menu-skin-custom .ybc-menu>.ybc-menu-item:hover .ybc-menu-item-link,
		.ybc-menu-layout-classic.ybc-menu-skin-custom .ybc-menu>.ybc-menu-item.active .ybc-menu-item-link
		{
		color:;
	}
	.ybc-menu-layout-light.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu>.ybc-menu-item:hover .ybc-menu-item-link,
		.ybc-menu-layout-default.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu>.ybc-menu-item:hover .ybc-menu-item-link,
		.ybc-menu-layout-light.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu>.ybc-menu-item:hover .ybc-menu-item-no-link,
		.ybc-menu-layout-default.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu>.ybc-menu-item:hover .ybc-menu-item-no-link
		{
		background-color:;
	}
	.ybc-menu-skin-custom  #ybc-menu-main-content .ybc-mm-control-content .ybc-menu-block-links  li a:hover
		{
		color:;
	}
	.ybc-menu-layout-default.ybc-menu-skin-custom .ybc-menu:before,
		.ybc-menu-layout-default.fixed-full.position-fixed-scroll.ybc-menu-skin-custom:before
		{
		background-color: #ffffff;
	}
	.ybc-menu-layout-default.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item .ybc-menu-item-link,
		.ybc-dir-rtl.ybc-menu-layout-default.fixed-full.position-fixed-scroll.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu>li:first-child>.ybc-menu-item-link
		{
		border-right-color: #ffffff;
	}
	.ybc-dir-rtl.ybc-menu-layout-default.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item .ybc-menu-item-link
		{
		border-left-color: #ffffff;
		border-right: none;
	}
	.ybc-menu-layout-default.fixed-full.position-fixed-scroll.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu>li:first-child>.ybc-menu-item-link
		{
		border-left-color: #ffffff;
	}
	.ybc-menu-layout-default.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item  .ybc-menu-item-link,
		.ybc-menu-layout-light.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item  .ybc-menu-item-link,
		.ybc-menu-layout-classic.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item  .ybc-menu-item-link,
		.ybc-menu-layout-default.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item  .ybc-menu-item-link i,
		.ybc-menu-layout-light.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item  .ybc-menu-item-link i,
		.ybc-menu-layout-classic.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item  .ybc-menu-item-link i,
		.ybc-menu-layout-default.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item  .ybc-menu-item-no-link,
		.ybc-menu-layout-light.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item  .ybc-menu-item-no-link,
		.ybc-menu-layout-classic.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item  .ybc-menu-item-no-link,
		.ybc-menu-layout-default.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item  .ybc-menu-item-no-link i,
		.ybc-menu-layout-light.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item  .ybc-menu-item-no-link i,
		.ybc-menu-layout-classic.ybc-menu-skin-custom #ybc-menu-main-content .ybc-menu-item  .ybc-menu-item-no-link i
		{
		color:;
	}
	.ybc-menu-skin-custom .ybc-ul-category li:hover>.ybc-mm-control::before,
		.ybc-menu-skin-custom .ybc-sub-categories li:hover>.ybc-mm-control::before
		{
		color:;
	}
	.ybc-menu-layout-light.ybc-menu-skin-custom .ybc-menu .ybc-menu-item {
		/* border-right: 1px solid ;*/
		box-shadow: none;
	}
}

@media ( max-width : 767px) {
	.ybc-menu-wrapper.ybc-menu-skin-custom .ybc-menu-main-content {
		background-color:;
	}
	.ybc-menu-layout-default.ybc-menu-skin-custom  .ybc-menu-main-content {
		border-bottom: none;
	}
	.ybc-menu-skin-custom .ybc-sub-menu-header span:first-child {
		background-color:;
	}
	.ybc-menu-skin-custom  #ybc-menu-main-content {
		border-color:;
	}
}
</style>
<script type="text/javascript">
	var YBCNIVO_WIDTH = '100%';
	var YBCNIVO_HEIGHT = '100%';
	var YBCNIVO_SPEED = 500;
	var YBCNIVO_PAUSE = 10000;
	var YBCNIVO_LOOP = 0;
	var YBCNIVO_START_SLIDE = 1;
	var YBCNIVO_PAUSE_ON_HOVER = 1;
	var YBCNIVO_SHOW_CONTROL = 0;
	var YBCNIVO_SHOW_PREV_NEXT = 1;
	var YBCNIVO_BUTTON_IMAGE = 0;
	var YBCNIVO_CAPTION_SPEED = 300;
	var YBCNIVO_FRAME_WIDTH = '100%';
</script>
<style>
#ynp-submit, .ynp-close {
	background:;
	color: #f9b002;
}

#ynp-submit:hover, .ynp-close:hover {
	background:;
	color: #f9b002;
}
</style>
<style>
.ybc-newsletter-home-parallax {
	background-image:
		url('resources/template/demo.etssoft.net/digital/modules/ybc_themeconfig/images/config/bg_nlt.gif');
}
/**/
body.ybc-skin-blue_1 {
	/*background: #ffffff!important;*/
	
}

body.ybc-skin-blue_1 .main-menu, body.ybc-skin-blue_1 .new-label, body.ybc-skin-blue_1 .quick-view,
	body.ybc-skin-blue_1 .add_to_compare, body.ybc-skin-blue_1 .btn.button_nivo,
	body.ybc-skin-blue_1 .scroll_top, body.ybc-skin-blue_1 .wishlist a,
	body.ybc-skin-blue_1 .ybc-blog-post-footer .read_more, body.ybc-skin-blue_1 ul.step li.step_current::before,
	body.ybc-skin-blue_1 ul.step li.step_current::after, body.ybc-skin-blue_1 ul.step li.step_done::before,
	body.ybc-skin-blue_1 ul.step li.step_done::after, body.ybc-skin-blue_1 #view_scroll_left,
	body.ybc-skin-blue_1 #view_scroll_right, body.ybc-skin-blue_1 .box-cart-bottom .exclusive.button,
	body.ybc-skin-blue_1 #footer .ybc-theme-panel-inner #ybc_tc_float_header li.active,
	body.ybc-skin-blue_1 .owl-controls .owl-nav>div:hover, body.ybc-skin-blue_1 .theme-default .nivo-directionNav a,
	body.ybc-skin-blue_1 .theme-default a.nivo-nextNav::before, body.ybc-skin-blue_1 .theme-default a.nivo-nextPrev::before,
	body.ybc-skin-blue_1 ul.product_list .functional-buttons div.compare a:hover:before,
	body.ybc-skin-blue_1 .button-container .functional-buttons:hover, body.ybc-skin-blue_1 ul.pagination li.active>span span,
	body.ybc-skin-blue_1 .blog-paggination .links>b, body.ybc-skin-blue_1 .ybc_shopmsg_alert,
	body.ybc-skin-blue_1 .contact_store_information_left i, body.ybc-skin-blue_1 .owl-controls .owl-nav>div:hover,
	body.ybc-skin-blue_1 div.light_square .pp_close:hover:before, body.ybc-skin-blue_1 .product-container .button.ajax_add_to_cart_button,
	body.ybc-skin-blue_1 .comparison_product_infos .button.ajax_add_to_cart_button
	{
	background-color: #28abe3;
	color: #ffffff;
	border-color: #28abe3;
}

body.ybc-skin-blue_1 #subcategories ul li:hover .subcategory-image a,
	body.ybc-skin-blue_1 .scroll_top:hover:before, body.ybc-skin-blue_1 .scroll_top:hover:after,
	body.ybc-skin-blue_1 .nivo-controlNav a:hover, body.ybc-skin-blue_1 .theme-default .nivo-directionNav a:hover,
	body.ybc-skin-blue_1 .nivo-button:hover {
	border-color: #28abe3;
}

body.ybc-skin-blue_1 .ybc-theme-panel-bg.active, body.ybc-skin-blue_1 .htmlcontent-item-link-wrap .item-title span,
	body.ybc-skin-blue_1 .ui-slider-horizontal .ui-slider-range, body.ybc-skin-blue_1 .header-container,
	body.ybc-skin-blue_1 .owl-dot.active span, body.ybc-skin-blue_1 .owl-dot:hover span,
	body.ybc-skin-blue_1 .scroll_top::after, body.ybc-skin-blue_1 .scroll_top::before,
	body.ybc-skin-blue_1 .search_locations:hover, body.ybc-skin-blue_1 .ybc-blog-search .block_content .button:hover,
	body.ybc-skin-blue_1 .ybc-newsletter-popup .ynp-submit, body.ybc-skin-blue_1 .nivo-controlNav a.active
	{
	border-color: #28abe3;
}

body.ybc-skin-blue_1 #view_scroll_right::before {
	border-color: transparent transparent #28abe3;
}

body.ybc-skin-blue_1 .ybc-theme-panel-btn {
	border-color: transparent transparent transparent #28abe3;
}

body.ybc-skin-blue_1 .ybc-theme-panel-btn:hover {
	border-color: transparent transparent transparent #ffc63d;
}

body.ybc-skin-blue_1 #view_scroll_left::before, body.ybc-skin-blue_1 .header-container::before
	{
	border-color: #28abe3 transparent transparent;
}

body.ybc-skin-blue_1 .bt_color, body.ybc-skin-blue_1 .caption2, body.ybc-skin-blue_1 #ybc_tc_layout li.active::before,
	body.ybc-skin-blue_1 .ybc_coppyright a, body.ybc-skin-blue_1 .ybc-blog-related-posts-meta-categories>a,
	body.ybc-skin-blue_1 .quantity-formated, body.ybc-skin-blue_1 .ybc-menu>li.view_more_menu a:hover,
	body.ybc-skin-blue_1 .ybc-menu>li.view_less_menu a:hover, body.ybc-skin-blue_1 #layer_cart .layer_cart_product .title,
	body.ybc-skin-blue_1 .content_sortPagiBar .display li.selected i, body.ybc-skin-blue_1 .content_sortPagiBar .display_m li.selected i,
	body.ybc-skin-blue_1 .ybc-widget-ybc-custom-1 .ybc-widget-title a, body.ybc-skin-blue_1 .ybc-widget-ybc-custom-3 .ybc-widget-title a
	{
	color: #28abe3;
}

/*color 2 - color text when hover*/
body.ybc-skin-blue_1 #footer #newsletter_block_left .form-group .button-small:hover,
	body.ybc-skin-blue_1 .button-container .functional-buttons:hover, body.ybc-skin-blue_1 ul.pagination li.active>span span
	{
	color: #ffffff;
}

/* color 5 - background color for button*/
body.ybc-skin-blue_1 .ybc-menu-toggle, body.ybc-skin-blue_1 .search_block_top_content button,
	body.ybc-skin-blue_1 .show_qties .ajax_cart_quantity, body.ybc-skin-blue_1 .button,
	body.ybc-skin-blue_1 #layered_block_left .ui-state-default, body.ybc-skin-blue_1 #layered_block_left .ui-widget-content .ui-state-default,
	body.ybc-skin-blue_1 .ybc-menu-item.ybc_new>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-blue_1 .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-blue_1 .btn {
	background-color: #f9b002;
	color: #ffffff;
}

body.ybc-skin-blue_1 .price.product-price, body.ybc-skin-blue_1 div.star::after,
	body.ybc-skin-blue_1 .shop_text_nav_config, body.ybc-skin-blue_1 .caption1 .main_color,
	body.ybc-skin-blue_1 .breadcrumb, body.ybc-skin-blue_1 .price, body.ybc-skin-blue_1 #uniform-ynp-input-dont-show>span.checked::before,
	body.ybc-skin-blue_1 .ybc-menu>li.view_more_menu a, body.ybc-skin-blue_1 .ybc-menu>li.view_less_menu a,
	body.ybc-skin-blue_1 .ybc-widget-ybc-custom-1 .ybc-widget-subtitle,
	body.ybc-skin-blue_1 .ybc-widget-ybc-custom-3 .ybc-widget-subtitle {
	color: #f9b002;
}

body.ybc-skin-blue_1 .ybc-menu-main-content {
	border-color: #f9b002;
}

/*---------*/
body.ybc-skin-blue_1 .price-percent-reduction, body.ybc-skin-blue_1 .ybc-menu-item.ybc_sale>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-blue_1 .ybc-menu-item.ybc_sale>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-blue_1 .ybc-widget-ybc-custom-5 .ybc-widget-subtitle,
	body.ybc-skin-blue_1 .sale-label, body.ybc-skin-blue_1 .ybc-mm-discount-percent,
	body.ybc-skin-blue_1 #ybc_countdown #reduction_percent {
	background-color: #ee3f22;
	color: #ffffff;
}

/*color 3 - color-background when hover*/
body.ybc-skin-blue_1 .button:hover, body.ybc-skin-blue_1 .btn.button_nivo:hover,
	body.ybc-skin-blue_1 .btn:hover, body.ybc-skin-blue_1 .quick-view:hover,
	body.ybc-skin-blue_1 #new_comment_tab_btn:hover, body.ybc-skin-blue_1 .add_to_compare:hover,
	body.ybc-skin-blue_1 .ybc-blog-post-footer .read_more:hover, body.ybc-skin-blue_1 .wishlist a:hover,
	body.ybc-skin-blue_1 .comparison_product_infos .button.ajax_add_to_cart_button:hover,
	body.ybc-skin-blue_1 .box-sharing-button li a:hover, body.ybc-skin-blue_1 .box-cart-bottom .exclusive.button:hover,
	body.ybc-skin-blue_1 .product-container .button.ajax_add_to_cart_button:hover
	{
	background-color: #ffc63d;
	color: #ffffff;
}

body.ybc-skin-blue_1 .bt_color:hover, body.ybc-skin-blue_1 a:hover, body.ybc-skin-blue_1 #view_full_size .span_link:hover:after,
	body.ybc-skin-blue_1 #view_full_size .span_link:hover, body.ybc-skin-blue_1 #layer_cart .cross:hover
	{
	color: #ffc63d;
}

body.ybc-skin-blue_1 .ybc-blog-post-footer .read_more:hover {
	border-color: #ffc63d;
}

body.ybc-skin-blue_1 .ac_results li:hover:before, body.ybc-skin-blue_1 .ybc_shopmsg_alert:before,
	body.ybc-skin-blue_1 .ybc_blog_skin_default .nivo-caption:before, body.ybc-skin-blue_1 .theme-bar .nivo-directionNav .nivo-nextNav:hover:before,
	body.ybc-skin-blue_1 .theme-bar .nivo-directionNav .nivo-prevNav:hover:before
	{
	opacity: 0.5;
}

body.ybc-skin-blue_1 .theme-bar .nivo-directionNav .nivo-nextNav:before,
	body.ybc-skin-blue_1 .theme-bar .nivo-directionNav .nivo-prevNav:before
	{
	opacity: 0.3;
}

body.ybc-skin-blue_1 .ybc-menu-item.ybc_new>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-blue_1 .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link:first-child::after
	{
	background-color: #01aae8
}

body.ybc-skin-blue_1 .ybc-menu-item.ybc_hot>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-blue_1 .ybc-menu-item.ybc_hot>span.ybc-menu-item-no-link:first-child::after,
	body.ybc-skin-blue_1 .ybc-menu-block.ybc_hot .ybc-menu-title-block h6::after
	{
	background-color: #fa6900
}

/**/
body.ybc-skin-blue_2 {
	/*background: #ffffff!important;*/
	
}

body.ybc-skin-blue_2 .main-menu, body.ybc-skin-blue_2 .new-label, body.ybc-skin-blue_2 .quick-view,
	body.ybc-skin-blue_2 .add_to_compare, body.ybc-skin-blue_2 .btn.button_nivo,
	body.ybc-skin-blue_2 .scroll_top, body.ybc-skin-blue_2 .wishlist a,
	body.ybc-skin-blue_2 .ybc-blog-post-footer .read_more, body.ybc-skin-blue_2 ul.step li.step_current::before,
	body.ybc-skin-blue_2 ul.step li.step_current::after, body.ybc-skin-blue_2 ul.step li.step_done::before,
	body.ybc-skin-blue_2 ul.step li.step_done::after, body.ybc-skin-blue_2 #view_scroll_left,
	body.ybc-skin-blue_2 #view_scroll_right, body.ybc-skin-blue_2 .box-cart-bottom .exclusive.button,
	body.ybc-skin-blue_2 #footer .ybc-theme-panel-inner #ybc_tc_float_header li.active,
	body.ybc-skin-blue_2 .owl-controls .owl-nav>div:hover, body.ybc-skin-blue_2 .theme-default .nivo-directionNav a,
	body.ybc-skin-blue_2 .theme-default a.nivo-nextNav::before, body.ybc-skin-blue_2 .theme-default a.nivo-nextPrev::before,
	body.ybc-skin-blue_2 ul.product_list .functional-buttons div.compare a:hover:before,
	body.ybc-skin-blue_2 .button-container .functional-buttons:hover, body.ybc-skin-blue_2 ul.pagination li.active>span span,
	body.ybc-skin-blue_2 .blog-paggination .links>b, body.ybc-skin-blue_2 .ybc_shopmsg_alert,
	body.ybc-skin-blue_2 .contact_store_information_left i, body.ybc-skin-blue_2 .owl-controls .owl-nav>div:hover,
	body.ybc-skin-blue_2 div.light_square .pp_close:hover:before, body.ybc-skin-blue_2 .product-container .button.ajax_add_to_cart_button,
	body.ybc-skin-blue_2 .comparison_product_infos .button.ajax_add_to_cart_button
	{
	background-color: #6e9ecf;
	color: #ffffff;
	border-color: #6e9ecf;
}

body.ybc-skin-blue_2 #subcategories ul li:hover .subcategory-image a,
	body.ybc-skin-blue_2 .scroll_top:hover:before, body.ybc-skin-blue_2 .scroll_top:hover:after,
	body.ybc-skin-blue_2 .nivo-controlNav a:hover, body.ybc-skin-blue_2 .theme-default .nivo-directionNav a:hover,
	body.ybc-skin-blue_2 .nivo-button:hover {
	border-color: #6e9ecf;
}

body.ybc-skin-blue_2 .ybc-theme-panel-bg.active, body.ybc-skin-blue_2 .htmlcontent-item-link-wrap .item-title span,
	body.ybc-skin-blue_2 .ui-slider-horizontal .ui-slider-range, body.ybc-skin-blue_2 .header-container,
	body.ybc-skin-blue_2 .owl-dot.active span, body.ybc-skin-blue_2 .owl-dot:hover span,
	body.ybc-skin-blue_2 .scroll_top::after, body.ybc-skin-blue_2 .scroll_top::before,
	body.ybc-skin-blue_2 .search_locations:hover, body.ybc-skin-blue_2 .ybc-blog-search .block_content .button:hover,
	body.ybc-skin-blue_2 .ybc-newsletter-popup .ynp-submit, body.ybc-skin-blue_2 .nivo-controlNav a.active
	{
	border-color: #6e9ecf;
}

body.ybc-skin-blue_2 #view_scroll_right::before {
	border-color: transparent transparent #6e9ecf;
}

body.ybc-skin-blue_2 .ybc-theme-panel-btn {
	border-color: transparent transparent transparent #6e9ecf;
}

body.ybc-skin-blue_2 .ybc-theme-panel-btn:hover {
	border-color: transparent transparent transparent #ffd168;
}

body.ybc-skin-blue_2 #view_scroll_left::before, body.ybc-skin-blue_2 .header-container::before
	{
	border-color: #6e9ecf transparent transparent;
}

body.ybc-skin-blue_2 .bt_color, body.ybc-skin-blue_2 .caption2, body.ybc-skin-blue_2 #ybc_tc_layout li.active::before,
	body.ybc-skin-blue_2 .ybc_coppyright a, body.ybc-skin-blue_2 .ybc-blog-related-posts-meta-categories>a,
	body.ybc-skin-blue_2 .quantity-formated, body.ybc-skin-blue_2 .ybc-menu>li.view_more_menu a:hover,
	body.ybc-skin-blue_2 .ybc-menu>li.view_less_menu a:hover, body.ybc-skin-blue_2 #layer_cart .layer_cart_product .title,
	body.ybc-skin-blue_2 .content_sortPagiBar .display li.selected i, body.ybc-skin-blue_2 .content_sortPagiBar .display_m li.selected i,
	body.ybc-skin-blue_2 .ybc-widget-ybc-custom-1 .ybc-widget-title a, body.ybc-skin-blue_2 .ybc-widget-ybc-custom-3 .ybc-widget-title a
	{
	color: #6e9ecf;
}

/*color 2 - color text when hover*/
body.ybc-skin-blue_2 #footer #newsletter_block_left .form-group .button-small:hover,
	body.ybc-skin-blue_2 .button-container .functional-buttons:hover, body.ybc-skin-blue_2 ul.pagination li.active>span span
	{
	color: #ffffff;
}

/* color 5 - background color for button*/
body.ybc-skin-blue_2 .ybc-menu-toggle, body.ybc-skin-blue_2 .search_block_top_content button,
	body.ybc-skin-blue_2 .show_qties .ajax_cart_quantity, body.ybc-skin-blue_2 .button,
	body.ybc-skin-blue_2 #layered_block_left .ui-state-default, body.ybc-skin-blue_2 #layered_block_left .ui-widget-content .ui-state-default,
	body.ybc-skin-blue_2 .ybc-menu-item.ybc_new>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-blue_2 .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-blue_2 .btn {
	background-color: #ffc33c;
	color: #ffffff;
}

body.ybc-skin-blue_2 .price.product-price, body.ybc-skin-blue_2 div.star::after,
	body.ybc-skin-blue_2 .shop_text_nav_config, body.ybc-skin-blue_2 .caption1 .main_color,
	body.ybc-skin-blue_2 .breadcrumb, body.ybc-skin-blue_2 .price, body.ybc-skin-blue_2 #uniform-ynp-input-dont-show>span.checked::before,
	body.ybc-skin-blue_2 .ybc-menu>li.view_more_menu a, body.ybc-skin-blue_2 .ybc-menu>li.view_less_menu a,
	body.ybc-skin-blue_2 .ybc-widget-ybc-custom-1 .ybc-widget-subtitle,
	body.ybc-skin-blue_2 .ybc-widget-ybc-custom-3 .ybc-widget-subtitle {
	color: #ffc33c;
}

body.ybc-skin-blue_2 .ybc-menu-main-content {
	border-color: #ffc33c;
}

/*---------*/
body.ybc-skin-blue_2 .price-percent-reduction, body.ybc-skin-blue_2 .ybc-menu-item.ybc_sale>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-blue_2 .ybc-menu-item.ybc_sale>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-blue_2 .ybc-widget-ybc-custom-5 .ybc-widget-subtitle,
	body.ybc-skin-blue_2 .sale-label, body.ybc-skin-blue_2 .ybc-mm-discount-percent,
	body.ybc-skin-blue_2 #ybc_countdown #reduction_percent {
	background-color: #ff6c8d;
	color: #ffffff;
}

/*color 3 - color-background when hover*/
body.ybc-skin-blue_2 .button:hover, body.ybc-skin-blue_2 .btn.button_nivo:hover,
	body.ybc-skin-blue_2 .btn:hover, body.ybc-skin-blue_2 .quick-view:hover,
	body.ybc-skin-blue_2 #new_comment_tab_btn:hover, body.ybc-skin-blue_2 .add_to_compare:hover,
	body.ybc-skin-blue_2 .ybc-blog-post-footer .read_more:hover, body.ybc-skin-blue_2 .wishlist a:hover,
	body.ybc-skin-blue_2 .comparison_product_infos .button.ajax_add_to_cart_button:hover,
	body.ybc-skin-blue_2 .box-sharing-button li a:hover, body.ybc-skin-blue_2 .box-cart-bottom .exclusive.button:hover,
	body.ybc-skin-blue_2 .product-container .button.ajax_add_to_cart_button:hover
	{
	background-color: #ffd168;
	color: #ffffff;
}

body.ybc-skin-blue_2 .bt_color:hover, body.ybc-skin-blue_2 a:hover, body.ybc-skin-blue_2 #view_full_size .span_link:hover:after,
	body.ybc-skin-blue_2 #view_full_size .span_link:hover, body.ybc-skin-blue_2 #layer_cart .cross:hover
	{
	color: #ffd168;
}

body.ybc-skin-blue_2 .ybc-blog-post-footer .read_more:hover {
	border-color: #ffd168;
}

body.ybc-skin-blue_2 .ac_results li:hover:before, body.ybc-skin-blue_2 .ybc_shopmsg_alert:before,
	body.ybc-skin-blue_2 .ybc_blog_skin_default .nivo-caption:before, body.ybc-skin-blue_2 .theme-bar .nivo-directionNav .nivo-nextNav:hover:before,
	body.ybc-skin-blue_2 .theme-bar .nivo-directionNav .nivo-prevNav:hover:before
	{
	opacity: 0.5;
}

body.ybc-skin-blue_2 .theme-bar .nivo-directionNav .nivo-nextNav:before,
	body.ybc-skin-blue_2 .theme-bar .nivo-directionNav .nivo-prevNav:before
	{
	opacity: 0.3;
}

body.ybc-skin-blue_2 .ybc-menu-item.ybc_new>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-blue_2 .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link:first-child::after
	{
	background-color: #ff8f8f
}

body.ybc-skin-blue_2 .ybc-menu-item.ybc_hot>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-blue_2 .ybc-menu-item.ybc_hot>span.ybc-menu-item-no-link:first-child::after,
	body.ybc-skin-blue_2 .ybc-menu-block.ybc_hot .ybc-menu-title-block h6::after
	{
	background-color: #a72c00
}

/**/
body.ybc-skin-blue_3 {
	/*background: #ffffff!important;*/
	
}

body.ybc-skin-blue_3 .main-menu, body.ybc-skin-blue_3 .new-label, body.ybc-skin-blue_3 .quick-view,
	body.ybc-skin-blue_3 .add_to_compare, body.ybc-skin-blue_3 .btn.button_nivo,
	body.ybc-skin-blue_3 .scroll_top, body.ybc-skin-blue_3 .wishlist a,
	body.ybc-skin-blue_3 .ybc-blog-post-footer .read_more, body.ybc-skin-blue_3 ul.step li.step_current::before,
	body.ybc-skin-blue_3 ul.step li.step_current::after, body.ybc-skin-blue_3 ul.step li.step_done::before,
	body.ybc-skin-blue_3 ul.step li.step_done::after, body.ybc-skin-blue_3 #view_scroll_left,
	body.ybc-skin-blue_3 #view_scroll_right, body.ybc-skin-blue_3 .box-cart-bottom .exclusive.button,
	body.ybc-skin-blue_3 #footer .ybc-theme-panel-inner #ybc_tc_float_header li.active,
	body.ybc-skin-blue_3 .owl-controls .owl-nav>div:hover, body.ybc-skin-blue_3 .theme-default .nivo-directionNav a,
	body.ybc-skin-blue_3 .theme-default a.nivo-nextNav::before, body.ybc-skin-blue_3 .theme-default a.nivo-nextPrev::before,
	body.ybc-skin-blue_3 ul.product_list .functional-buttons div.compare a:hover:before,
	body.ybc-skin-blue_3 .button-container .functional-buttons:hover, body.ybc-skin-blue_3 ul.pagination li.active>span span,
	body.ybc-skin-blue_3 .blog-paggination .links>b, body.ybc-skin-blue_3 .ybc_shopmsg_alert,
	body.ybc-skin-blue_3 .contact_store_information_left i, body.ybc-skin-blue_3 .owl-controls .owl-nav>div:hover,
	body.ybc-skin-blue_3 div.light_square .pp_close:hover:before, body.ybc-skin-blue_3 .product-container .button.ajax_add_to_cart_button,
	body.ybc-skin-blue_3 .comparison_product_infos .button.ajax_add_to_cart_button
	{
	background-color: #73c5e1;
	color: #ffffff;
	border-color: #73c5e1;
}

body.ybc-skin-blue_3 #subcategories ul li:hover .subcategory-image a,
	body.ybc-skin-blue_3 .scroll_top:hover:before, body.ybc-skin-blue_3 .scroll_top:hover:after,
	body.ybc-skin-blue_3 .nivo-controlNav a:hover, body.ybc-skin-blue_3 .theme-default .nivo-directionNav a:hover,
	body.ybc-skin-blue_3 .nivo-button:hover {
	border-color: #73c5e1;
}

body.ybc-skin-blue_3 .ybc-theme-panel-bg.active, body.ybc-skin-blue_3 .htmlcontent-item-link-wrap .item-title span,
	body.ybc-skin-blue_3 .ui-slider-horizontal .ui-slider-range, body.ybc-skin-blue_3 .header-container,
	body.ybc-skin-blue_3 .owl-dot.active span, body.ybc-skin-blue_3 .owl-dot:hover span,
	body.ybc-skin-blue_3 .scroll_top::after, body.ybc-skin-blue_3 .scroll_top::before,
	body.ybc-skin-blue_3 .search_locations:hover, body.ybc-skin-blue_3 .ybc-blog-search .block_content .button:hover,
	body.ybc-skin-blue_3 .ybc-newsletter-popup .ynp-submit, body.ybc-skin-blue_3 .nivo-controlNav a.active
	{
	border-color: #73c5e1;
}

body.ybc-skin-blue_3 #view_scroll_right::before {
	border-color: transparent transparent #73c5e1;
}

body.ybc-skin-blue_3 .ybc-theme-panel-btn {
	border-color: transparent transparent transparent #73c5e1;
}

body.ybc-skin-blue_3 .ybc-theme-panel-btn:hover {
	border-color: transparent transparent transparent #ff8ca6;
}

body.ybc-skin-blue_3 #view_scroll_left::before, body.ybc-skin-blue_3 .header-container::before
	{
	border-color: #73c5e1 transparent transparent;
}

body.ybc-skin-blue_3 .bt_color, body.ybc-skin-blue_3 .caption2, body.ybc-skin-blue_3 #ybc_tc_layout li.active::before,
	body.ybc-skin-blue_3 .ybc_coppyright a, body.ybc-skin-blue_3 .ybc-blog-related-posts-meta-categories>a,
	body.ybc-skin-blue_3 .quantity-formated, body.ybc-skin-blue_3 .ybc-menu>li.view_more_menu a:hover,
	body.ybc-skin-blue_3 .ybc-menu>li.view_less_menu a:hover, body.ybc-skin-blue_3 #layer_cart .layer_cart_product .title,
	body.ybc-skin-blue_3 .content_sortPagiBar .display li.selected i, body.ybc-skin-blue_3 .content_sortPagiBar .display_m li.selected i,
	body.ybc-skin-blue_3 .ybc-widget-ybc-custom-1 .ybc-widget-title a, body.ybc-skin-blue_3 .ybc-widget-ybc-custom-3 .ybc-widget-title a
	{
	color: #73c5e1;
}

/*color 2 - color text when hover*/
body.ybc-skin-blue_3 #footer #newsletter_block_left .form-group .button-small:hover,
	body.ybc-skin-blue_3 .button-container .functional-buttons:hover, body.ybc-skin-blue_3 ul.pagination li.active>span span
	{
	color: #ffffff;
}

/* color 5 - background color for button*/
body.ybc-skin-blue_3 .ybc-menu-toggle, body.ybc-skin-blue_3 .search_block_top_content button,
	body.ybc-skin-blue_3 .show_qties .ajax_cart_quantity, body.ybc-skin-blue_3 .button,
	body.ybc-skin-blue_3 #layered_block_left .ui-state-default, body.ybc-skin-blue_3 #layered_block_left .ui-widget-content .ui-state-default,
	body.ybc-skin-blue_3 .ybc-menu-item.ybc_new>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-blue_3 .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-blue_3 .btn {
	background-color: #ff6c8d;
	color: #ffffff;
}

body.ybc-skin-blue_3 .price.product-price, body.ybc-skin-blue_3 div.star::after,
	body.ybc-skin-blue_3 .shop_text_nav_config, body.ybc-skin-blue_3 .caption1 .main_color,
	body.ybc-skin-blue_3 .breadcrumb, body.ybc-skin-blue_3 .price, body.ybc-skin-blue_3 #uniform-ynp-input-dont-show>span.checked::before,
	body.ybc-skin-blue_3 .ybc-menu>li.view_more_menu a, body.ybc-skin-blue_3 .ybc-menu>li.view_less_menu a,
	body.ybc-skin-blue_3 .ybc-widget-ybc-custom-1 .ybc-widget-subtitle,
	body.ybc-skin-blue_3 .ybc-widget-ybc-custom-3 .ybc-widget-subtitle {
	color: #ff6c8d;
}

body.ybc-skin-blue_3 .ybc-menu-main-content {
	border-color: #ff6c8d;
}

/*---------*/
body.ybc-skin-blue_3 .price-percent-reduction, body.ybc-skin-blue_3 .ybc-menu-item.ybc_sale>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-blue_3 .ybc-menu-item.ybc_sale>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-blue_3 .ybc-widget-ybc-custom-5 .ybc-widget-subtitle,
	body.ybc-skin-blue_3 .sale-label, body.ybc-skin-blue_3 .ybc-mm-discount-percent,
	body.ybc-skin-blue_3 #ybc_countdown #reduction_percent {
	background-color: #ffd041;
	color: #ffffff;
}

/*color 3 - color-background when hover*/
body.ybc-skin-blue_3 .button:hover, body.ybc-skin-blue_3 .btn.button_nivo:hover,
	body.ybc-skin-blue_3 .btn:hover, body.ybc-skin-blue_3 .quick-view:hover,
	body.ybc-skin-blue_3 #new_comment_tab_btn:hover, body.ybc-skin-blue_3 .add_to_compare:hover,
	body.ybc-skin-blue_3 .ybc-blog-post-footer .read_more:hover, body.ybc-skin-blue_3 .wishlist a:hover,
	body.ybc-skin-blue_3 .comparison_product_infos .button.ajax_add_to_cart_button:hover,
	body.ybc-skin-blue_3 .box-sharing-button li a:hover, body.ybc-skin-blue_3 .box-cart-bottom .exclusive.button:hover,
	body.ybc-skin-blue_3 .product-container .button.ajax_add_to_cart_button:hover
	{
	background-color: #ff8ca6;
	color: #ffffff;
}

body.ybc-skin-blue_3 .bt_color:hover, body.ybc-skin-blue_3 a:hover, body.ybc-skin-blue_3 #view_full_size .span_link:hover:after,
	body.ybc-skin-blue_3 #view_full_size .span_link:hover, body.ybc-skin-blue_3 #layer_cart .cross:hover
	{
	color: #ff8ca6;
}

body.ybc-skin-blue_3 .ybc-blog-post-footer .read_more:hover {
	border-color: #ff8ca6;
}

body.ybc-skin-blue_3 .ac_results li:hover:before, body.ybc-skin-blue_3 .ybc_shopmsg_alert:before,
	body.ybc-skin-blue_3 .ybc_blog_skin_default .nivo-caption:before, body.ybc-skin-blue_3 .theme-bar .nivo-directionNav .nivo-nextNav:hover:before,
	body.ybc-skin-blue_3 .theme-bar .nivo-directionNav .nivo-prevNav:hover:before
	{
	opacity: 0.5;
}

body.ybc-skin-blue_3 .theme-bar .nivo-directionNav .nivo-nextNav:before,
	body.ybc-skin-blue_3 .theme-bar .nivo-directionNav .nivo-prevNav:before
	{
	opacity: 0.3;
}

body.ybc-skin-blue_3 .ybc-menu-item.ybc_new>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-blue_3 .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link:first-child::after
	{
	background-color: #c79b50
}

body.ybc-skin-blue_3 .ybc-menu-item.ybc_hot>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-blue_3 .ybc-menu-item.ybc_hot>span.ybc-menu-item-no-link:first-child::after,
	body.ybc-skin-blue_3 .ybc-menu-block.ybc_hot .ybc-menu-title-block h6::after
	{
	background-color: #fa6900
}

/**/
body.ybc-skin-cyan {
	/*background: #ffffff!important;*/
	
}

body.ybc-skin-cyan .main-menu, body.ybc-skin-cyan .new-label, body.ybc-skin-cyan .quick-view,
	body.ybc-skin-cyan .add_to_compare, body.ybc-skin-cyan .btn.button_nivo,
	body.ybc-skin-cyan .scroll_top, body.ybc-skin-cyan .wishlist a, body.ybc-skin-cyan .ybc-blog-post-footer .read_more,
	body.ybc-skin-cyan ul.step li.step_current::before, body.ybc-skin-cyan ul.step li.step_current::after,
	body.ybc-skin-cyan ul.step li.step_done::before, body.ybc-skin-cyan ul.step li.step_done::after,
	body.ybc-skin-cyan #view_scroll_left, body.ybc-skin-cyan #view_scroll_right,
	body.ybc-skin-cyan .box-cart-bottom .exclusive.button, body.ybc-skin-cyan #footer .ybc-theme-panel-inner #ybc_tc_float_header li.active,
	body.ybc-skin-cyan .owl-controls .owl-nav>div:hover, body.ybc-skin-cyan .theme-default .nivo-directionNav a,
	body.ybc-skin-cyan .theme-default a.nivo-nextNav::before, body.ybc-skin-cyan .theme-default a.nivo-nextPrev::before,
	body.ybc-skin-cyan ul.product_list .functional-buttons div.compare a:hover:before,
	body.ybc-skin-cyan .button-container .functional-buttons:hover, body.ybc-skin-cyan ul.pagination li.active>span span,
	body.ybc-skin-cyan .blog-paggination .links>b, body.ybc-skin-cyan .ybc_shopmsg_alert,
	body.ybc-skin-cyan .contact_store_information_left i, body.ybc-skin-cyan .owl-controls .owl-nav>div:hover,
	body.ybc-skin-cyan div.light_square .pp_close:hover:before, body.ybc-skin-cyan .product-container .button.ajax_add_to_cart_button,
	body.ybc-skin-cyan .comparison_product_infos .button.ajax_add_to_cart_button
	{
	background-color: #00ccd6;
	color: #ffffff;
	border-color: #00ccd6;
}

body.ybc-skin-cyan #subcategories ul li:hover .subcategory-image a, body.ybc-skin-cyan .scroll_top:hover:before,
	body.ybc-skin-cyan .scroll_top:hover:after, body.ybc-skin-cyan .nivo-controlNav a:hover,
	body.ybc-skin-cyan .theme-default .nivo-directionNav a:hover, body.ybc-skin-cyan .nivo-button:hover
	{
	border-color: #00ccd6;
}

body.ybc-skin-cyan .ybc-theme-panel-bg.active, body.ybc-skin-cyan .htmlcontent-item-link-wrap .item-title span,
	body.ybc-skin-cyan .ui-slider-horizontal .ui-slider-range, body.ybc-skin-cyan .header-container,
	body.ybc-skin-cyan .owl-dot.active span, body.ybc-skin-cyan .owl-dot:hover span,
	body.ybc-skin-cyan .scroll_top::after, body.ybc-skin-cyan .scroll_top::before,
	body.ybc-skin-cyan .search_locations:hover, body.ybc-skin-cyan .ybc-blog-search .block_content .button:hover,
	body.ybc-skin-cyan .ybc-newsletter-popup .ynp-submit, body.ybc-skin-cyan .nivo-controlNav a.active
	{
	border-color: #00ccd6;
}

body.ybc-skin-cyan #view_scroll_right::before {
	border-color: transparent transparent #00ccd6;
}

body.ybc-skin-cyan .ybc-theme-panel-btn {
	border-color: transparent transparent transparent #00ccd6;
}

body.ybc-skin-cyan .ybc-theme-panel-btn:hover {
	border-color: transparent transparent transparent #fecc5c;
}

body.ybc-skin-cyan #view_scroll_left::before, body.ybc-skin-cyan .header-container::before
	{
	border-color: #00ccd6 transparent transparent;
}

body.ybc-skin-cyan .bt_color, body.ybc-skin-cyan .caption2, body.ybc-skin-cyan #ybc_tc_layout li.active::before,
	body.ybc-skin-cyan .ybc_coppyright a, body.ybc-skin-cyan .ybc-blog-related-posts-meta-categories>a,
	body.ybc-skin-cyan .quantity-formated, body.ybc-skin-cyan .ybc-menu>li.view_more_menu a:hover,
	body.ybc-skin-cyan .ybc-menu>li.view_less_menu a:hover, body.ybc-skin-cyan #layer_cart .layer_cart_product .title,
	body.ybc-skin-cyan .content_sortPagiBar .display li.selected i, body.ybc-skin-cyan .content_sortPagiBar .display_m li.selected i,
	body.ybc-skin-cyan .ybc-widget-ybc-custom-1 .ybc-widget-title a, body.ybc-skin-cyan .ybc-widget-ybc-custom-3 .ybc-widget-title a
	{
	color: #00ccd6;
}

/*color 2 - color text when hover*/
body.ybc-skin-cyan #footer #newsletter_block_left .form-group .button-small:hover,
	body.ybc-skin-cyan .button-container .functional-buttons:hover, body.ybc-skin-cyan ul.pagination li.active>span span
	{
	color: #ffffff;
}

/* color 5 - background color for button*/
body.ybc-skin-cyan .ybc-menu-toggle, body.ybc-skin-cyan .search_block_top_content button,
	body.ybc-skin-cyan .show_qties .ajax_cart_quantity, body.ybc-skin-cyan .button,
	body.ybc-skin-cyan #layered_block_left .ui-state-default, body.ybc-skin-cyan #layered_block_left .ui-widget-content .ui-state-default,
	body.ybc-skin-cyan .ybc-menu-item.ybc_new>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-cyan .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-cyan .btn {
	background-color: #ffc33c;
	color: #ffffff;
}

body.ybc-skin-cyan .price.product-price, body.ybc-skin-cyan div.star::after,
	body.ybc-skin-cyan .shop_text_nav_config, body.ybc-skin-cyan .caption1 .main_color,
	body.ybc-skin-cyan .breadcrumb, body.ybc-skin-cyan .price, body.ybc-skin-cyan #uniform-ynp-input-dont-show>span.checked::before,
	body.ybc-skin-cyan .ybc-menu>li.view_more_menu a, body.ybc-skin-cyan .ybc-menu>li.view_less_menu a,
	body.ybc-skin-cyan .ybc-widget-ybc-custom-1 .ybc-widget-subtitle, body.ybc-skin-cyan .ybc-widget-ybc-custom-3 .ybc-widget-subtitle
	{
	color: #ffc33c;
}

body.ybc-skin-cyan .ybc-menu-main-content {
	border-color: #ffc33c;
}

/*---------*/
body.ybc-skin-cyan .price-percent-reduction, body.ybc-skin-cyan .ybc-menu-item.ybc_sale>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-cyan .ybc-menu-item.ybc_sale>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-cyan .ybc-widget-ybc-custom-5 .ybc-widget-subtitle, body.ybc-skin-cyan .sale-label,
	body.ybc-skin-cyan .ybc-mm-discount-percent, body.ybc-skin-cyan #ybc_countdown #reduction_percent
	{
	background-color: #ff4c65;
	color: #ffffff;
}

/*color 3 - color-background when hover*/
body.ybc-skin-cyan .button:hover, body.ybc-skin-cyan .btn.button_nivo:hover,
	body.ybc-skin-cyan .btn:hover, body.ybc-skin-cyan .quick-view:hover,
	body.ybc-skin-cyan #new_comment_tab_btn:hover, body.ybc-skin-cyan .add_to_compare:hover,
	body.ybc-skin-cyan .ybc-blog-post-footer .read_more:hover, body.ybc-skin-cyan .wishlist a:hover,
	body.ybc-skin-cyan .comparison_product_infos .button.ajax_add_to_cart_button:hover,
	body.ybc-skin-cyan .box-sharing-button li a:hover, body.ybc-skin-cyan .box-cart-bottom .exclusive.button:hover,
	body.ybc-skin-cyan .product-container .button.ajax_add_to_cart_button:hover
	{
	background-color: #fecc5c;
	color: #ffffff;
}

body.ybc-skin-cyan .bt_color:hover, body.ybc-skin-cyan a:hover, body.ybc-skin-cyan #view_full_size .span_link:hover:after,
	body.ybc-skin-cyan #view_full_size .span_link:hover, body.ybc-skin-cyan #layer_cart .cross:hover
	{
	color: #fecc5c;
}

body.ybc-skin-cyan .ybc-blog-post-footer .read_more:hover {
	border-color: #fecc5c;
}

body.ybc-skin-cyan .ac_results li:hover:before, body.ybc-skin-cyan .ybc_shopmsg_alert:before,
	body.ybc-skin-cyan .ybc_blog_skin_default .nivo-caption:before, body.ybc-skin-cyan .theme-bar .nivo-directionNav .nivo-nextNav:hover:before,
	body.ybc-skin-cyan .theme-bar .nivo-directionNav .nivo-prevNav:hover:before
	{
	opacity: 0.5;
}

body.ybc-skin-cyan .theme-bar .nivo-directionNav .nivo-nextNav:before,
	body.ybc-skin-cyan .theme-bar .nivo-directionNav .nivo-prevNav:before {
	opacity: 0.3;
}

body.ybc-skin-cyan .ybc-menu-item.ybc_new>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-cyan .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link:first-child::after
	{
	background-color: #ff8f8f
}

body.ybc-skin-cyan .ybc-menu-item.ybc_hot>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-cyan .ybc-menu-item.ybc_hot>span.ybc-menu-item-no-link:first-child::after,
	body.ybc-skin-cyan .ybc-menu-block.ybc_hot .ybc-menu-title-block h6::after
	{
	background-color: #a72c00
}

/**/
body.ybc-skin-green_1 {
	/*background: #ffffff!important;*/
	
}

body.ybc-skin-green_1 .main-menu, body.ybc-skin-green_1 .new-label, body.ybc-skin-green_1 .quick-view,
	body.ybc-skin-green_1 .add_to_compare, body.ybc-skin-green_1 .btn.button_nivo,
	body.ybc-skin-green_1 .scroll_top, body.ybc-skin-green_1 .wishlist a,
	body.ybc-skin-green_1 .ybc-blog-post-footer .read_more, body.ybc-skin-green_1 ul.step li.step_current::before,
	body.ybc-skin-green_1 ul.step li.step_current::after, body.ybc-skin-green_1 ul.step li.step_done::before,
	body.ybc-skin-green_1 ul.step li.step_done::after, body.ybc-skin-green_1 #view_scroll_left,
	body.ybc-skin-green_1 #view_scroll_right, body.ybc-skin-green_1 .box-cart-bottom .exclusive.button,
	body.ybc-skin-green_1 #footer .ybc-theme-panel-inner #ybc_tc_float_header li.active,
	body.ybc-skin-green_1 .owl-controls .owl-nav>div:hover, body.ybc-skin-green_1 .theme-default .nivo-directionNav a,
	body.ybc-skin-green_1 .theme-default a.nivo-nextNav::before, body.ybc-skin-green_1 .theme-default a.nivo-nextPrev::before,
	body.ybc-skin-green_1 ul.product_list .functional-buttons div.compare a:hover:before,
	body.ybc-skin-green_1 .button-container .functional-buttons:hover, body.ybc-skin-green_1 ul.pagination li.active>span span,
	body.ybc-skin-green_1 .blog-paggination .links>b, body.ybc-skin-green_1 .ybc_shopmsg_alert,
	body.ybc-skin-green_1 .contact_store_information_left i, body.ybc-skin-green_1 .owl-controls .owl-nav>div:hover,
	body.ybc-skin-green_1 div.light_square .pp_close:hover:before, body.ybc-skin-green_1 .product-container .button.ajax_add_to_cart_button,
	body.ybc-skin-green_1 .comparison_product_infos .button.ajax_add_to_cart_button
	{
	background-color: #50be07;
	color: #ffffff;
	border-color: #50be07;
}

body.ybc-skin-green_1 #subcategories ul li:hover .subcategory-image a,
	body.ybc-skin-green_1 .scroll_top:hover:before, body.ybc-skin-green_1 .scroll_top:hover:after,
	body.ybc-skin-green_1 .nivo-controlNav a:hover, body.ybc-skin-green_1 .theme-default .nivo-directionNav a:hover,
	body.ybc-skin-green_1 .nivo-button:hover {
	border-color: #50be07;
}

body.ybc-skin-green_1 .ybc-theme-panel-bg.active, body.ybc-skin-green_1 .htmlcontent-item-link-wrap .item-title span,
	body.ybc-skin-green_1 .ui-slider-horizontal .ui-slider-range, body.ybc-skin-green_1 .header-container,
	body.ybc-skin-green_1 .owl-dot.active span, body.ybc-skin-green_1 .owl-dot:hover span,
	body.ybc-skin-green_1 .scroll_top::after, body.ybc-skin-green_1 .scroll_top::before,
	body.ybc-skin-green_1 .search_locations:hover, body.ybc-skin-green_1 .ybc-blog-search .block_content .button:hover,
	body.ybc-skin-green_1 .ybc-newsletter-popup .ynp-submit, body.ybc-skin-green_1 .nivo-controlNav a.active
	{
	border-color: #50be07;
}

body.ybc-skin-green_1 #view_scroll_right::before {
	border-color: transparent transparent #50be07;
}

body.ybc-skin-green_1 .ybc-theme-panel-btn {
	border-color: transparent transparent transparent #50be07;
}

body.ybc-skin-green_1 .ybc-theme-panel-btn:hover {
	border-color: transparent transparent transparent #faaa47;
}

body.ybc-skin-green_1 #view_scroll_left::before, body.ybc-skin-green_1 .header-container::before
	{
	border-color: #50be07 transparent transparent;
}

body.ybc-skin-green_1 .bt_color, body.ybc-skin-green_1 .caption2, body.ybc-skin-green_1 #ybc_tc_layout li.active::before,
	body.ybc-skin-green_1 .ybc_coppyright a, body.ybc-skin-green_1 .ybc-blog-related-posts-meta-categories>a,
	body.ybc-skin-green_1 .quantity-formated, body.ybc-skin-green_1 .ybc-menu>li.view_more_menu a:hover,
	body.ybc-skin-green_1 .ybc-menu>li.view_less_menu a:hover, body.ybc-skin-green_1 #layer_cart .layer_cart_product .title,
	body.ybc-skin-green_1 .content_sortPagiBar .display li.selected i, body.ybc-skin-green_1 .content_sortPagiBar .display_m li.selected i,
	body.ybc-skin-green_1 .ybc-widget-ybc-custom-1 .ybc-widget-title a,
	body.ybc-skin-green_1 .ybc-widget-ybc-custom-3 .ybc-widget-title a {
	color: #50be07;
}

/*color 2 - color text when hover*/
body.ybc-skin-green_1 #footer #newsletter_block_left .form-group .button-small:hover,
	body.ybc-skin-green_1 .button-container .functional-buttons:hover, body.ybc-skin-green_1 ul.pagination li.active>span span
	{
	color: #ffffff;
}

/* color 5 - background color for button*/
body.ybc-skin-green_1 .ybc-menu-toggle, body.ybc-skin-green_1 .search_block_top_content button,
	body.ybc-skin-green_1 .show_qties .ajax_cart_quantity, body.ybc-skin-green_1 .button,
	body.ybc-skin-green_1 #layered_block_left .ui-state-default, body.ybc-skin-green_1 #layered_block_left .ui-widget-content .ui-state-default,
	body.ybc-skin-green_1 .ybc-menu-item.ybc_new>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-green_1 .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-green_1 .btn {
	background-color: #f8961d;
	color: #ffffff;
}

body.ybc-skin-green_1 .price.product-price, body.ybc-skin-green_1 div.star::after,
	body.ybc-skin-green_1 .shop_text_nav_config, body.ybc-skin-green_1 .caption1 .main_color,
	body.ybc-skin-green_1 .breadcrumb, body.ybc-skin-green_1 .price, body.ybc-skin-green_1 #uniform-ynp-input-dont-show>span.checked::before,
	body.ybc-skin-green_1 .ybc-menu>li.view_more_menu a, body.ybc-skin-green_1 .ybc-menu>li.view_less_menu a,
	body.ybc-skin-green_1 .ybc-widget-ybc-custom-1 .ybc-widget-subtitle,
	body.ybc-skin-green_1 .ybc-widget-ybc-custom-3 .ybc-widget-subtitle {
	color: #f8961d;
}

body.ybc-skin-green_1 .ybc-menu-main-content {
	border-color: #f8961d;
}

/*---------*/
body.ybc-skin-green_1 .price-percent-reduction, body.ybc-skin-green_1 .ybc-menu-item.ybc_sale>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-green_1 .ybc-menu-item.ybc_sale>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-green_1 .ybc-widget-ybc-custom-5 .ybc-widget-subtitle,
	body.ybc-skin-green_1 .sale-label, body.ybc-skin-green_1 .ybc-mm-discount-percent,
	body.ybc-skin-green_1 #ybc_countdown #reduction_percent {
	background-color: #ff6c8d;
	color: #ffffff;
}

/*color 3 - color-background when hover*/
body.ybc-skin-green_1 .button:hover, body.ybc-skin-green_1 .btn.button_nivo:hover,
	body.ybc-skin-green_1 .btn:hover, body.ybc-skin-green_1 .quick-view:hover,
	body.ybc-skin-green_1 #new_comment_tab_btn:hover, body.ybc-skin-green_1 .add_to_compare:hover,
	body.ybc-skin-green_1 .ybc-blog-post-footer .read_more:hover, body.ybc-skin-green_1 .wishlist a:hover,
	body.ybc-skin-green_1 .comparison_product_infos .button.ajax_add_to_cart_button:hover,
	body.ybc-skin-green_1 .box-sharing-button li a:hover, body.ybc-skin-green_1 .box-cart-bottom .exclusive.button:hover,
	body.ybc-skin-green_1 .product-container .button.ajax_add_to_cart_button:hover
	{
	background-color: #faaa47;
	color: #ffffff;
}

body.ybc-skin-green_1 .bt_color:hover, body.ybc-skin-green_1 a:hover,
	body.ybc-skin-green_1 #view_full_size .span_link:hover:after, body.ybc-skin-green_1 #view_full_size .span_link:hover,
	body.ybc-skin-green_1 #layer_cart .cross:hover {
	color: #faaa47;
}

body.ybc-skin-green_1 .ybc-blog-post-footer .read_more:hover {
	border-color: #faaa47;
}

body.ybc-skin-green_1 .ac_results li:hover:before, body.ybc-skin-green_1 .ybc_shopmsg_alert:before,
	body.ybc-skin-green_1 .ybc_blog_skin_default .nivo-caption:before, body.ybc-skin-green_1 .theme-bar .nivo-directionNav .nivo-nextNav:hover:before,
	body.ybc-skin-green_1 .theme-bar .nivo-directionNav .nivo-prevNav:hover:before
	{
	opacity: 0.5;
}

body.ybc-skin-green_1 .theme-bar .nivo-directionNav .nivo-nextNav:before,
	body.ybc-skin-green_1 .theme-bar .nivo-directionNav .nivo-prevNav:before
	{
	opacity: 0.3;
}

body.ybc-skin-green_1 .ybc-menu-item.ybc_new>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-green_1 .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link:first-child::after
	{
	background-color: #ff8f8f
}

body.ybc-skin-green_1 .ybc-menu-item.ybc_hot>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-green_1 .ybc-menu-item.ybc_hot>span.ybc-menu-item-no-link:first-child::after,
	body.ybc-skin-green_1 .ybc-menu-block.ybc_hot .ybc-menu-title-block h6::after
	{
	background-color: #a72c00
}

/**/
body.ybc-skin-green_2 {
	/*background: #ffffff!important;*/
	
}

body.ybc-skin-green_2 .main-menu, body.ybc-skin-green_2 .new-label, body.ybc-skin-green_2 .quick-view,
	body.ybc-skin-green_2 .add_to_compare, body.ybc-skin-green_2 .btn.button_nivo,
	body.ybc-skin-green_2 .scroll_top, body.ybc-skin-green_2 .wishlist a,
	body.ybc-skin-green_2 .ybc-blog-post-footer .read_more, body.ybc-skin-green_2 ul.step li.step_current::before,
	body.ybc-skin-green_2 ul.step li.step_current::after, body.ybc-skin-green_2 ul.step li.step_done::before,
	body.ybc-skin-green_2 ul.step li.step_done::after, body.ybc-skin-green_2 #view_scroll_left,
	body.ybc-skin-green_2 #view_scroll_right, body.ybc-skin-green_2 .box-cart-bottom .exclusive.button,
	body.ybc-skin-green_2 #footer .ybc-theme-panel-inner #ybc_tc_float_header li.active,
	body.ybc-skin-green_2 .owl-controls .owl-nav>div:hover, body.ybc-skin-green_2 .theme-default .nivo-directionNav a,
	body.ybc-skin-green_2 .theme-default a.nivo-nextNav::before, body.ybc-skin-green_2 .theme-default a.nivo-nextPrev::before,
	body.ybc-skin-green_2 ul.product_list .functional-buttons div.compare a:hover:before,
	body.ybc-skin-green_2 .button-container .functional-buttons:hover, body.ybc-skin-green_2 ul.pagination li.active>span span,
	body.ybc-skin-green_2 .blog-paggination .links>b, body.ybc-skin-green_2 .ybc_shopmsg_alert,
	body.ybc-skin-green_2 .contact_store_information_left i, body.ybc-skin-green_2 .owl-controls .owl-nav>div:hover,
	body.ybc-skin-green_2 div.light_square .pp_close:hover:before, body.ybc-skin-green_2 .product-container .button.ajax_add_to_cart_button,
	body.ybc-skin-green_2 .comparison_product_infos .button.ajax_add_to_cart_button
	{
	background-color: #87af33;
	color: #ffffff;
	border-color: #87af33;
}

body.ybc-skin-green_2 #subcategories ul li:hover .subcategory-image a,
	body.ybc-skin-green_2 .scroll_top:hover:before, body.ybc-skin-green_2 .scroll_top:hover:after,
	body.ybc-skin-green_2 .nivo-controlNav a:hover, body.ybc-skin-green_2 .theme-default .nivo-directionNav a:hover,
	body.ybc-skin-green_2 .nivo-button:hover {
	border-color: #87af33;
}

body.ybc-skin-green_2 .ybc-theme-panel-bg.active, body.ybc-skin-green_2 .htmlcontent-item-link-wrap .item-title span,
	body.ybc-skin-green_2 .ui-slider-horizontal .ui-slider-range, body.ybc-skin-green_2 .header-container,
	body.ybc-skin-green_2 .owl-dot.active span, body.ybc-skin-green_2 .owl-dot:hover span,
	body.ybc-skin-green_2 .scroll_top::after, body.ybc-skin-green_2 .scroll_top::before,
	body.ybc-skin-green_2 .search_locations:hover, body.ybc-skin-green_2 .ybc-blog-search .block_content .button:hover,
	body.ybc-skin-green_2 .ybc-newsletter-popup .ynp-submit, body.ybc-skin-green_2 .nivo-controlNav a.active
	{
	border-color: #87af33;
}

body.ybc-skin-green_2 #view_scroll_right::before {
	border-color: transparent transparent #87af33;
}

body.ybc-skin-green_2 .ybc-theme-panel-btn {
	border-color: transparent transparent transparent #87af33;
}

body.ybc-skin-green_2 .ybc-theme-panel-btn:hover {
	border-color: transparent transparent transparent #f46f3f;
}

body.ybc-skin-green_2 #view_scroll_left::before, body.ybc-skin-green_2 .header-container::before
	{
	border-color: #87af33 transparent transparent;
}

body.ybc-skin-green_2 .bt_color, body.ybc-skin-green_2 .caption2, body.ybc-skin-green_2 #ybc_tc_layout li.active::before,
	body.ybc-skin-green_2 .ybc_coppyright a, body.ybc-skin-green_2 .ybc-blog-related-posts-meta-categories>a,
	body.ybc-skin-green_2 .quantity-formated, body.ybc-skin-green_2 .ybc-menu>li.view_more_menu a:hover,
	body.ybc-skin-green_2 .ybc-menu>li.view_less_menu a:hover, body.ybc-skin-green_2 #layer_cart .layer_cart_product .title,
	body.ybc-skin-green_2 .content_sortPagiBar .display li.selected i, body.ybc-skin-green_2 .content_sortPagiBar .display_m li.selected i,
	body.ybc-skin-green_2 .ybc-widget-ybc-custom-1 .ybc-widget-title a,
	body.ybc-skin-green_2 .ybc-widget-ybc-custom-3 .ybc-widget-title a {
	color: #87af33;
}

/*color 2 - color text when hover*/
body.ybc-skin-green_2 #footer #newsletter_block_left .form-group .button-small:hover,
	body.ybc-skin-green_2 .button-container .functional-buttons:hover, body.ybc-skin-green_2 ul.pagination li.active>span span
	{
	color: #ffffff;
}

/* color 5 - background color for button*/
body.ybc-skin-green_2 .ybc-menu-toggle, body.ybc-skin-green_2 .search_block_top_content button,
	body.ybc-skin-green_2 .show_qties .ajax_cart_quantity, body.ybc-skin-green_2 .button,
	body.ybc-skin-green_2 #layered_block_left .ui-state-default, body.ybc-skin-green_2 #layered_block_left .ui-widget-content .ui-state-default,
	body.ybc-skin-green_2 .ybc-menu-item.ybc_new>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-green_2 .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-green_2 .btn {
	background-color: #dd5f32;
	color: #ffffff;
}

body.ybc-skin-green_2 .price.product-price, body.ybc-skin-green_2 div.star::after,
	body.ybc-skin-green_2 .shop_text_nav_config, body.ybc-skin-green_2 .caption1 .main_color,
	body.ybc-skin-green_2 .breadcrumb, body.ybc-skin-green_2 .price, body.ybc-skin-green_2 #uniform-ynp-input-dont-show>span.checked::before,
	body.ybc-skin-green_2 .ybc-menu>li.view_more_menu a, body.ybc-skin-green_2 .ybc-menu>li.view_less_menu a,
	body.ybc-skin-green_2 .ybc-widget-ybc-custom-1 .ybc-widget-subtitle,
	body.ybc-skin-green_2 .ybc-widget-ybc-custom-3 .ybc-widget-subtitle {
	color: #dd5f32;
}

body.ybc-skin-green_2 .ybc-menu-main-content {
	border-color: #dd5f32;
}

/*---------*/
body.ybc-skin-green_2 .price-percent-reduction, body.ybc-skin-green_2 .ybc-menu-item.ybc_sale>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-green_2 .ybc-menu-item.ybc_sale>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-green_2 .ybc-widget-ybc-custom-5 .ybc-widget-subtitle,
	body.ybc-skin-green_2 .sale-label, body.ybc-skin-green_2 .ybc-mm-discount-percent,
	body.ybc-skin-green_2 #ybc_countdown #reduction_percent {
	background-color: #6e9ecf;
	color: #ffffff;
}

/*color 3 - color-background when hover*/
body.ybc-skin-green_2 .button:hover, body.ybc-skin-green_2 .btn.button_nivo:hover,
	body.ybc-skin-green_2 .btn:hover, body.ybc-skin-green_2 .quick-view:hover,
	body.ybc-skin-green_2 #new_comment_tab_btn:hover, body.ybc-skin-green_2 .add_to_compare:hover,
	body.ybc-skin-green_2 .ybc-blog-post-footer .read_more:hover, body.ybc-skin-green_2 .wishlist a:hover,
	body.ybc-skin-green_2 .comparison_product_infos .button.ajax_add_to_cart_button:hover,
	body.ybc-skin-green_2 .box-sharing-button li a:hover, body.ybc-skin-green_2 .box-cart-bottom .exclusive.button:hover,
	body.ybc-skin-green_2 .product-container .button.ajax_add_to_cart_button:hover
	{
	background-color: #f46f3f;
	color: #ffffff;
}

body.ybc-skin-green_2 .bt_color:hover, body.ybc-skin-green_2 a:hover,
	body.ybc-skin-green_2 #view_full_size .span_link:hover:after, body.ybc-skin-green_2 #view_full_size .span_link:hover,
	body.ybc-skin-green_2 #layer_cart .cross:hover {
	color: #f46f3f;
}

body.ybc-skin-green_2 .ybc-blog-post-footer .read_more:hover {
	border-color: #f46f3f;
}

body.ybc-skin-green_2 .ac_results li:hover:before, body.ybc-skin-green_2 .ybc_shopmsg_alert:before,
	body.ybc-skin-green_2 .ybc_blog_skin_default .nivo-caption:before, body.ybc-skin-green_2 .theme-bar .nivo-directionNav .nivo-nextNav:hover:before,
	body.ybc-skin-green_2 .theme-bar .nivo-directionNav .nivo-prevNav:hover:before
	{
	opacity: 0.5;
}

body.ybc-skin-green_2 .theme-bar .nivo-directionNav .nivo-nextNav:before,
	body.ybc-skin-green_2 .theme-bar .nivo-directionNav .nivo-prevNav:before
	{
	opacity: 0.3;
}

body.ybc-skin-green_2 .ybc-menu-item.ybc_new>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-green_2 .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link:first-child::after
	{
	background-color: #87af33
}

body.ybc-skin-green_2 .ybc-menu-item.ybc_hot>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-green_2 .ybc-menu-item.ybc_hot>span.ybc-menu-item-no-link:first-child::after,
	body.ybc-skin-green_2 .ybc-menu-block.ybc_hot .ybc-menu-title-block h6::after
	{
	background-color: #87af33
}

/**/
body.ybc-skin-red {
	/*background: #ffffff!important;*/
	
}

body.ybc-skin-red .main-menu, body.ybc-skin-red .new-label, body.ybc-skin-red .quick-view,
	body.ybc-skin-red .add_to_compare, body.ybc-skin-red .btn.button_nivo,
	body.ybc-skin-red .scroll_top, body.ybc-skin-red .wishlist a, body.ybc-skin-red .ybc-blog-post-footer .read_more,
	body.ybc-skin-red ul.step li.step_current::before, body.ybc-skin-red ul.step li.step_current::after,
	body.ybc-skin-red ul.step li.step_done::before, body.ybc-skin-red ul.step li.step_done::after,
	body.ybc-skin-red #view_scroll_left, body.ybc-skin-red #view_scroll_right,
	body.ybc-skin-red .box-cart-bottom .exclusive.button, body.ybc-skin-red #footer .ybc-theme-panel-inner #ybc_tc_float_header li.active,
	body.ybc-skin-red .owl-controls .owl-nav>div:hover, body.ybc-skin-red .theme-default .nivo-directionNav a,
	body.ybc-skin-red .theme-default a.nivo-nextNav::before, body.ybc-skin-red .theme-default a.nivo-nextPrev::before,
	body.ybc-skin-red ul.product_list .functional-buttons div.compare a:hover:before,
	body.ybc-skin-red .button-container .functional-buttons:hover, body.ybc-skin-red ul.pagination li.active>span span,
	body.ybc-skin-red .blog-paggination .links>b, body.ybc-skin-red .ybc_shopmsg_alert,
	body.ybc-skin-red .contact_store_information_left i, body.ybc-skin-red .owl-controls .owl-nav>div:hover,
	body.ybc-skin-red div.light_square .pp_close:hover:before, body.ybc-skin-red .product-container .button.ajax_add_to_cart_button,
	body.ybc-skin-red .comparison_product_infos .button.ajax_add_to_cart_button
	{
	background-color: #ff3234;
	color: #ffffff;
	border-color: #ff3234;
}

body.ybc-skin-red #subcategories ul li:hover .subcategory-image a, body.ybc-skin-red .scroll_top:hover:before,
	body.ybc-skin-red .scroll_top:hover:after, body.ybc-skin-red .nivo-controlNav a:hover,
	body.ybc-skin-red .theme-default .nivo-directionNav a:hover, body.ybc-skin-red .nivo-button:hover
	{
	border-color: #ff3234;
}

body.ybc-skin-red .ybc-theme-panel-bg.active, body.ybc-skin-red .htmlcontent-item-link-wrap .item-title span,
	body.ybc-skin-red .ui-slider-horizontal .ui-slider-range, body.ybc-skin-red .header-container,
	body.ybc-skin-red .owl-dot.active span, body.ybc-skin-red .owl-dot:hover span,
	body.ybc-skin-red .scroll_top::after, body.ybc-skin-red .scroll_top::before,
	body.ybc-skin-red .search_locations:hover, body.ybc-skin-red .ybc-blog-search .block_content .button:hover,
	body.ybc-skin-red .ybc-newsletter-popup .ynp-submit, body.ybc-skin-red .nivo-controlNav a.active
	{
	border-color: #ff3234;
}

body.ybc-skin-red #view_scroll_right::before {
	border-color: transparent transparent #ff3234;
}

body.ybc-skin-red .ybc-theme-panel-btn {
	border-color: transparent transparent transparent #ff3234;
}

body.ybc-skin-red .ybc-theme-panel-btn:hover {
	border-color: transparent transparent transparent #32d7fe;
}

body.ybc-skin-red #view_scroll_left::before, body.ybc-skin-red .header-container::before
	{
	border-color: #ff3234 transparent transparent;
}

body.ybc-skin-red .bt_color, body.ybc-skin-red .caption2, body.ybc-skin-red #ybc_tc_layout li.active::before,
	body.ybc-skin-red .ybc_coppyright a, body.ybc-skin-red .ybc-blog-related-posts-meta-categories>a,
	body.ybc-skin-red .quantity-formated, body.ybc-skin-red .ybc-menu>li.view_more_menu a:hover,
	body.ybc-skin-red .ybc-menu>li.view_less_menu a:hover, body.ybc-skin-red #layer_cart .layer_cart_product .title,
	body.ybc-skin-red .content_sortPagiBar .display li.selected i, body.ybc-skin-red .content_sortPagiBar .display_m li.selected i,
	body.ybc-skin-red .ybc-widget-ybc-custom-1 .ybc-widget-title a, body.ybc-skin-red .ybc-widget-ybc-custom-3 .ybc-widget-title a
	{
	color: #ff3234;
}

/*color 2 - color text when hover*/
body.ybc-skin-red #footer #newsletter_block_left .form-group .button-small:hover,
	body.ybc-skin-red .button-container .functional-buttons:hover, body.ybc-skin-red ul.pagination li.active>span span
	{
	color: #ffffff;
}

/* color 5 - background color for button*/
body.ybc-skin-red .ybc-menu-toggle, body.ybc-skin-red .search_block_top_content button,
	body.ybc-skin-red .show_qties .ajax_cart_quantity, body.ybc-skin-red .button,
	body.ybc-skin-red #layered_block_left .ui-state-default, body.ybc-skin-red #layered_block_left .ui-widget-content .ui-state-default,
	body.ybc-skin-red .ybc-menu-item.ybc_new>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-red .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-red .btn {
	background-color: #00c8f8;
	color: #ffffff;
}

body.ybc-skin-red .price.product-price, body.ybc-skin-red div.star::after,
	body.ybc-skin-red .shop_text_nav_config, body.ybc-skin-red .caption1 .main_color,
	body.ybc-skin-red .breadcrumb, body.ybc-skin-red .price, body.ybc-skin-red #uniform-ynp-input-dont-show>span.checked::before,
	body.ybc-skin-red .ybc-menu>li.view_more_menu a, body.ybc-skin-red .ybc-menu>li.view_less_menu a,
	body.ybc-skin-red .ybc-widget-ybc-custom-1 .ybc-widget-subtitle, body.ybc-skin-red .ybc-widget-ybc-custom-3 .ybc-widget-subtitle
	{
	color: #00c8f8;
}

body.ybc-skin-red .ybc-menu-main-content {
	border-color: #00c8f8;
}

/*---------*/
body.ybc-skin-red .price-percent-reduction, body.ybc-skin-red .ybc-menu-item.ybc_sale>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-red .ybc-menu-item.ybc_sale>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-red .ybc-widget-ybc-custom-5 .ybc-widget-subtitle, body.ybc-skin-red .sale-label,
	body.ybc-skin-red .ybc-mm-discount-percent, body.ybc-skin-red #ybc_countdown #reduction_percent
	{
	background-color: #ffc33c;
	color: #ffffff;
}

/*color 3 - color-background when hover*/
body.ybc-skin-red .button:hover, body.ybc-skin-red .btn.button_nivo:hover,
	body.ybc-skin-red .btn:hover, body.ybc-skin-red .quick-view:hover, body.ybc-skin-red #new_comment_tab_btn:hover,
	body.ybc-skin-red .add_to_compare:hover, body.ybc-skin-red .ybc-blog-post-footer .read_more:hover,
	body.ybc-skin-red .wishlist a:hover, body.ybc-skin-red .comparison_product_infos .button.ajax_add_to_cart_button:hover,
	body.ybc-skin-red .box-sharing-button li a:hover, body.ybc-skin-red .box-cart-bottom .exclusive.button:hover,
	body.ybc-skin-red .product-container .button.ajax_add_to_cart_button:hover
	{
	background-color: #32d7fe;
	color: #ffffff;
}

body.ybc-skin-red .bt_color:hover, body.ybc-skin-red a:hover, body.ybc-skin-red #view_full_size .span_link:hover:after,
	body.ybc-skin-red #view_full_size .span_link:hover, body.ybc-skin-red #layer_cart .cross:hover
	{
	color: #32d7fe;
}

body.ybc-skin-red .ybc-blog-post-footer .read_more:hover {
	border-color: #32d7fe;
}

body.ybc-skin-red .ac_results li:hover:before, body.ybc-skin-red .ybc_shopmsg_alert:before,
	body.ybc-skin-red .ybc_blog_skin_default .nivo-caption:before, body.ybc-skin-red .theme-bar .nivo-directionNav .nivo-nextNav:hover:before,
	body.ybc-skin-red .theme-bar .nivo-directionNav .nivo-prevNav:hover:before
	{
	opacity: 0.5;
}

body.ybc-skin-red .theme-bar .nivo-directionNav .nivo-nextNav:before,
	body.ybc-skin-red .theme-bar .nivo-directionNav .nivo-prevNav:before {
	opacity: 0.3;
}

body.ybc-skin-red .ybc-menu-item.ybc_new>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-red .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link:first-child::after
	{
	background-color: #de5842
}

body.ybc-skin-red .ybc-menu-item.ybc_hot>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-red .ybc-menu-item.ybc_hot>span.ybc-menu-item-no-link:first-child::after,
	body.ybc-skin-red .ybc-menu-block.ybc_hot .ybc-menu-title-block h6::after
	{
	background-color: #fcd059
}

/**/
body.ybc-skin-custom {
	/*background: #ffffff!important;*/
	
}

body.ybc-skin-custom .main-menu, body.ybc-skin-custom .new-label, body.ybc-skin-custom .quick-view,
	body.ybc-skin-custom .add_to_compare, body.ybc-skin-custom .btn.button_nivo,
	body.ybc-skin-custom .scroll_top, body.ybc-skin-custom .wishlist a,
	body.ybc-skin-custom .ybc-blog-post-footer .read_more, body.ybc-skin-custom ul.step li.step_current::before,
	body.ybc-skin-custom ul.step li.step_current::after, body.ybc-skin-custom ul.step li.step_done::before,
	body.ybc-skin-custom ul.step li.step_done::after, body.ybc-skin-custom #view_scroll_left,
	body.ybc-skin-custom #view_scroll_right, body.ybc-skin-custom .box-cart-bottom .exclusive.button,
	body.ybc-skin-custom #footer .ybc-theme-panel-inner #ybc_tc_float_header li.active,
	body.ybc-skin-custom .owl-controls .owl-nav>div:hover, body.ybc-skin-custom .theme-default .nivo-directionNav a,
	body.ybc-skin-custom .theme-default a.nivo-nextNav::before, body.ybc-skin-custom .theme-default a.nivo-nextPrev::before,
	body.ybc-skin-custom ul.product_list .functional-buttons div.compare a:hover:before,
	body.ybc-skin-custom .button-container .functional-buttons:hover, body.ybc-skin-custom ul.pagination li.active>span span,
	body.ybc-skin-custom .blog-paggination .links>b, body.ybc-skin-custom .ybc_shopmsg_alert,
	body.ybc-skin-custom .contact_store_information_left i, body.ybc-skin-custom .owl-controls .owl-nav>div:hover,
	body.ybc-skin-custom div.light_square .pp_close:hover:before, body.ybc-skin-custom .product-container .button.ajax_add_to_cart_button,
	body.ybc-skin-custom .comparison_product_infos .button.ajax_add_to_cart_button
	{
	background-color: #ff6c8d;
	color: #ffffff;
	border-color: #ff6c8d;
}

body.ybc-skin-custom #subcategories ul li:hover .subcategory-image a,
	body.ybc-skin-custom .scroll_top:hover:before, body.ybc-skin-custom .scroll_top:hover:after,
	body.ybc-skin-custom .nivo-controlNav a:hover, body.ybc-skin-custom .theme-default .nivo-directionNav a:hover,
	body.ybc-skin-custom .nivo-button:hover {
	border-color: #ff6c8d;
}

body.ybc-skin-custom .ybc-theme-panel-bg.active, body.ybc-skin-custom .htmlcontent-item-link-wrap .item-title span,
	body.ybc-skin-custom .ui-slider-horizontal .ui-slider-range, body.ybc-skin-custom .header-container,
	body.ybc-skin-custom .owl-dot.active span, body.ybc-skin-custom .owl-dot:hover span,
	body.ybc-skin-custom .scroll_top::after, body.ybc-skin-custom .scroll_top::before,
	body.ybc-skin-custom .search_locations:hover, body.ybc-skin-custom .ybc-blog-search .block_content .button:hover,
	body.ybc-skin-custom .ybc-newsletter-popup .ynp-submit, body.ybc-skin-custom .nivo-controlNav a.active
	{
	border-color: #ff6c8d;
}

body.ybc-skin-custom #view_scroll_right::before {
	border-color: transparent transparent #ff6c8d;
}

body.ybc-skin-custom .ybc-theme-panel-btn {
	border-color: transparent transparent transparent #ff6c8d;
}

body.ybc-skin-custom .ybc-theme-panel-btn:hover {
	border-color: transparent transparent transparent #11e5ef;
}

body.ybc-skin-custom #view_scroll_left::before, body.ybc-skin-custom .header-container::before
	{
	border-color: #ff6c8d transparent transparent;
}

body.ybc-skin-custom .bt_color, body.ybc-skin-custom .caption2, body.ybc-skin-custom #ybc_tc_layout li.active::before,
	body.ybc-skin-custom .ybc_coppyright a, body.ybc-skin-custom .ybc-blog-related-posts-meta-categories>a,
	body.ybc-skin-custom .quantity-formated, body.ybc-skin-custom .ybc-menu>li.view_more_menu a:hover,
	body.ybc-skin-custom .ybc-menu>li.view_less_menu a:hover, body.ybc-skin-custom #layer_cart .layer_cart_product .title,
	body.ybc-skin-custom .content_sortPagiBar .display li.selected i, body.ybc-skin-custom .content_sortPagiBar .display_m li.selected i,
	body.ybc-skin-custom .ybc-widget-ybc-custom-1 .ybc-widget-title a, body.ybc-skin-custom .ybc-widget-ybc-custom-3 .ybc-widget-title a
	{
	color: #ff6c8d;
}

/*color 2 - color text when hover*/
body.ybc-skin-custom #footer #newsletter_block_left .form-group .button-small:hover,
	body.ybc-skin-custom .button-container .functional-buttons:hover, body.ybc-skin-custom ul.pagination li.active>span span
	{
	color: #ffffff;
}

/* color 5 - background color for button*/
body.ybc-skin-custom .ybc-menu-toggle, body.ybc-skin-custom .search_block_top_content button,
	body.ybc-skin-custom .show_qties .ajax_cart_quantity, body.ybc-skin-custom .button,
	body.ybc-skin-custom #layered_block_left .ui-state-default, body.ybc-skin-custom #layered_block_left .ui-widget-content .ui-state-default,
	body.ybc-skin-custom .ybc-menu-item.ybc_new>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-custom .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-custom .btn {
	background-color: #00ccd6;
	color: #ffffff;
}

body.ybc-skin-custom .price.product-price, body.ybc-skin-custom div.star::after,
	body.ybc-skin-custom .shop_text_nav_config, body.ybc-skin-custom .caption1 .main_color,
	body.ybc-skin-custom .breadcrumb, body.ybc-skin-custom .price, body.ybc-skin-custom #uniform-ynp-input-dont-show>span.checked::before,
	body.ybc-skin-custom .ybc-menu>li.view_more_menu a, body.ybc-skin-custom .ybc-menu>li.view_less_menu a,
	body.ybc-skin-custom .ybc-widget-ybc-custom-1 .ybc-widget-subtitle,
	body.ybc-skin-custom .ybc-widget-ybc-custom-3 .ybc-widget-subtitle {
	color: #00ccd6;
}

body.ybc-skin-custom .ybc-menu-main-content {
	border-color: #00ccd6;
}

/*---------*/
body.ybc-skin-custom .price-percent-reduction, body.ybc-skin-custom .ybc-menu-item.ybc_sale>.ybc-menu-item-link>span.ybc_menu_item_link_content::before,
	body.ybc-skin-custom .ybc-menu-item.ybc_sale>span.ybc-menu-item-no-link.ybc_menu_item_link_content::before,
	body.ybc-skin-custom .ybc-widget-ybc-custom-5 .ybc-widget-subtitle,
	body.ybc-skin-custom .sale-label, body.ybc-skin-custom .ybc-mm-discount-percent,
	body.ybc-skin-custom #ybc_countdown #reduction_percent {
	background-color: #ffc33c;
	color: #ffffff;
}

/*color 3 - color-background when hover*/
body.ybc-skin-custom .button:hover, body.ybc-skin-custom .btn.button_nivo:hover,
	body.ybc-skin-custom .btn:hover, body.ybc-skin-custom .quick-view:hover,
	body.ybc-skin-custom #new_comment_tab_btn:hover, body.ybc-skin-custom .add_to_compare:hover,
	body.ybc-skin-custom .ybc-blog-post-footer .read_more:hover, body.ybc-skin-custom .wishlist a:hover,
	body.ybc-skin-custom .comparison_product_infos .button.ajax_add_to_cart_button:hover,
	body.ybc-skin-custom .box-sharing-button li a:hover, body.ybc-skin-custom .box-cart-bottom .exclusive.button:hover,
	body.ybc-skin-custom .product-container .button.ajax_add_to_cart_button:hover
	{
	background-color: #11e5ef;
	color: #ffffff;
}

body.ybc-skin-custom .bt_color:hover, body.ybc-skin-custom a:hover, body.ybc-skin-custom #view_full_size .span_link:hover:after,
	body.ybc-skin-custom #view_full_size .span_link:hover, body.ybc-skin-custom #layer_cart .cross:hover
	{
	color: #11e5ef;
}

body.ybc-skin-custom .ybc-blog-post-footer .read_more:hover {
	border-color: #11e5ef;
}

body.ybc-skin-custom .ac_results li:hover:before, body.ybc-skin-custom .ybc_shopmsg_alert:before,
	body.ybc-skin-custom .ybc_blog_skin_default .nivo-caption:before, body.ybc-skin-custom .theme-bar .nivo-directionNav .nivo-nextNav:hover:before,
	body.ybc-skin-custom .theme-bar .nivo-directionNav .nivo-prevNav:hover:before
	{
	opacity: 0.5;
}

body.ybc-skin-custom .theme-bar .nivo-directionNav .nivo-nextNav:before,
	body.ybc-skin-custom .theme-bar .nivo-directionNav .nivo-prevNav:before
	{
	opacity: 0.3;
}

body.ybc-skin-custom .ybc-menu-item.ybc_new>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-custom .ybc-menu-item.ybc_new>span.ybc-menu-item-no-link:first-child::after
	{
	background-color: #ff8f8f
}

body.ybc-skin-custom .ybc-menu-item.ybc_hot>.ybc-menu-item-link>span:first-child::after,
	body.ybc-skin-custom .ybc-menu-item.ybc_hot>span.ybc-menu-item-no-link:first-child::after,
	body.ybc-skin-custom .ybc-menu-block.ybc_hot .ybc-menu-title-block h6::after
	{
	background-color: #a72c00
}
</style>
<link rel="stylesheet"
	href="resources/template/demo.etssoft.net/digital/themes/digitalstore/css/layout_1.css"
	type="text/css" media="all" />
	
<script type="text/javascript" src="resources/js/Library.js"></script>
<link rel="stylesheet"
	href="resources/css/animate.css"
	type="text/css"  />


<script type="text/javascript" src="resources/js/bootbox.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap-notify.min.js"></script>	
	
</head>
<body id="index"
	class="index hide-left-column hide-right-column lang_en  ybc-float_header-no ybc-float_css3-yes ybc-layout-default ybc-skin-blue_1 ybc-product_layout-layout2 ybc-contact_form_layout-layout1">
	<div id="page" class="">
		<div class="header-container">
			<header id="header" class="header_style_1">
				<div class="nav">
					<div class="container">
						<div class="row">
							<nav>
								<div class="info_toggle_mobile">
									<span class="info_toggle hidden-lg hidden-md hidden-sm">
										<i class="fa fa-info-circle"></i>Info
									</span>
									<ul class="ybc-widget-ybc-custom-4">
										<li class="ybc-widget-item">

											<div class="ybc-widget-description">
												<ul>
													<li><a href="index.html">Home</a></li>
													<li><a
														href="http://demo.etssoft.net/digital/content/4-about-us">About
															Us</a></li>
													<li><a href="#">Company News</a></li>
													<li><a href="#">Careers</a></li>
													<li><a href="blog.html">Blog</a></li>
													<li><a
														href="contact-usdb53.html?YBC_TC_CONTACT_FORM_LAYOUT=layout1">Contact</a>
														<ul>
															<li><a
																href="contact-usdb53.html?YBC_TC_CONTACT_FORM_LAYOUT=layout1">Contact
																	1</a></li>
															<li><a
																href="contact-us2740.html?YBC_TC_CONTACT_FORM_LAYOUT=layout2">Contact
																	2</a></li>
															<li><a
																href="contact-us34ed.html?YBC_TC_CONTACT_FORM_LAYOUT=layout3">Contact
																	3</a></li>
														</ul></li>
												</ul>
											</div>
										</li>
									</ul>

								</div>
								<div class="ybc_myaccout">
									<div class="toogle_user">
										<a class="my_account" href="login.jsp" title="My account">
											<i class="fa fa-user"></i> ${ObjUsuario}
										</a>
									</div>

									<div class="header_user_info blockuserinfo">
										<span>Mi Cuenta</span>
									</div>
								</div>
								<a class="login userinfor" href="<c:url value="/Login/" />"
									rel="nofollow" title="Log in to your customer account"> <i
									class="icon icon-key"></i> Login
								</a>
							</nav>
						</div>
					</div>
				</div>


				<div class="header_bottom">
					<div class="container">
						<div class="row">
							<div id="header_logo" class="">
								<a href="http://demo.etssoft.net/digital/" title="Digital Store">
									<img class="logo img-responsive"
									src="resources/template/demo.etssoft.net/digital/modules/ybc_themeconfig/images/logo/blue.png"
									alt="Digital Store" width="191" height="49" />
								</a>
							</div>
							<ul class="ybc-widget-ybc-custom-2">
								<li class="ybc-widget-item  col-xs-4  ">
									<div class="ybc-widget-item-content">
										<i class="fa fa-tags"></i>
										<div class="ybc-widget-description-content">
											<div class="ybc-widget-description">
												<p>
													100% Brand new<br />Guarantee
												</p>
											</div>
										</div>
									</div>
								</li>
								<li class="ybc-widget-item  col-xs-4  ">
									<div class="ybc-widget-item-content">
										<i class="fa fa-wrench"></i>
										<div class="ybc-widget-description-content">
											<div class="ybc-widget-description">
												<p>
													Excellent<br /> Warranty services
												</p>
											</div>
										</div>
									</div>
								</li>
								<li class="ybc-widget-item  col-xs-4  ">
									<div class="ybc-widget-item-content">
										<i class="fa fa-truck"></i>
										<div class="ybc-widget-description-content">
											<div class="ybc-widget-description">
												<p>
													Free shipping<br /> Within 50km
												</p>
											</div>
										</div>
									</div>
								</li>
							</ul>

							<div class="shop_text_nav">
								<div class="shop_text_nav_config">
									<b>Call us now</b><br />0123-456-789
								</div>
							</div>
						</div>
					</div>
					<div class="main-menu">
						<div class="container">

							<div
								class="ybc-menu-wrapper fixed-full 
        ybc-dir-ltr ybc-no-arrow 
         
        position-not-fixed         
        ybc-mm-mobile-type-default 
        ybc-menu-layout-light 
        ybc-menu-skin-custom ybc-menu-slide
                 col-xs-12 col-sm-12">

								<div class="ybc-menu-blinder"></div>
								<div class="ybc-menu-toggle ybc-menu-btn allway_show">
									<div class="ybc-menu-button-toggle">
										<span> Categories <span
											class="ybc-menu-button-toggle_icon"> <i
												class="icon-bar"></i> <i class="icon-bar"></i> <i
												class="icon-bar"></i>
										</span>
										</span>
									</div>
								</div>

								<div class="ybc-menu-main-content" id="ybc-menu-main-content">
									<ul class="ybc-menu">
										${BodyCategorias}
									</ul>
								</div>
							</div>

							
							
							<div class="custom_block_cart ">
								<div class="">
									<a class="show_qties"  id="btnShowShoppingCart" style="color: white;"
										title="Ver mis compras" rel="nofollow"> <span
										class="label_shopping_cart">Mis Compras</span><br /> 
										 <span id="lblCarTotal"
										class="ajax_cart_total"> S/.0.00 </span>

									</a>
									<div class="cart_block block exclusive">
										<div class="block_content">
											<!-- block list of products -->
											<div class="cart_block_list">
												<div class="cart-prices">
												    Cant.Productos <span id="lblQuanty">0</span>		
													<div class="cart-prices-line last-line">
														<span  id="lblTotalResume" class="price cart_block_total ajax_block_cart_total">S/.0.00</span>
														<span>Total</span>	
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- .cart_block -->
								</div>
							</div>
							<!-- #layer_cart -->
							<div class="layer_cart_overlay"></div>

							<!-- /MODULE Block cart -->

						</div>
					</div>
				</div>


			</header>

		</div>
		<div class="columns-container page_style_1">
			<div id="slider_row" class="">
				<div id="top_column" class="">

					<!-- Module ybc_nivoslider -->
					<div id="ybc-nivo-slider-wrapper" class="theme-default" style="">
						<div id="ybc-nivo-slider">
							<a href="                            #"
								title="New generation of digital cameras"> <img
								data-id-slide="1" data-caption-animate="type1"
								data-caption1="New generation of digital cameras"
								data-caption2="CAnon Fx800D" data-caption3="Purchase Now"
								data-text-direction="left" data-caption-top="7%"
								data-caption-left="310px" data-caption-right="25%"
								data-caption-width="50%" data-caption-position="left"
								data-custom_class="c2_ls_5" data-button_link="#"
								src="resources/template/demo.etssoft.net/digital/modules/ybc_nivoslider/images/54760ce9062b460dcebbff8915287f5aa10085fe_slider1.jpg"
								alt="New generation of digital cameras"
								title="New generation of digital cameras"
								style="max-width: 100%; max-height: 100%;" />
							</a> <a href="                            #"
								title="New lap top Serires"> <img data-id-slide="2"
								data-caption-animate="type2" data-caption1="New lap top Serires"
								data-caption2="Acer Aspire R11" data-caption3="Purchase now"
								data-text-direction="left" data-caption-top="7%"
								data-caption-left="310px" data-caption-right="10%"
								data-caption-width="50%" data-caption-position="left"
								data-custom_class="" data-button_link="#"
								src="resources/template/demo.etssoft.net/digital/modules/ybc_nivoslider/images/6608e5332f78f1ed945298e44ee9ffa4d15cdcc1_slider-12.jpg"
								alt="New lap top Serires" title="New lap top Serires"
								style="max-width: 100%; max-height: 100%;" />
							</a>


						</div>
						<div id="ybc-nivo-slider-loader">
							<div class="ybc-nivo-slider-loader">
								<div id="ybc-nivo-slider-loader-img">
									<img
										src="resources/template/demo.etssoft.net/digital/modules/ybc_nivoslider/img/loading.gif"
										alt="Loading" />
								</div>
							</div>
						</div>
					</div>
					<div class="caption-wrapper">
						<div class="ybc-nivo-description-1">
							<p>
								Get thhe confident to archive your photographic<br /> vision
								with canon FX800D
							</p>
						</div>
						<div class="ybc-nivo-description-2">
							<p>
								New laptop model from Acer, powerful notebook for<br />
								anywhere the jobs take you
							</p>
						</div>
					</div>
				</div>
			</div>
			<div id="columns">
				<div class="">
					<div id="center_column" class="center_column col-xs-12 col-sm-12">
						<div class="container">
							<div class="tab-content">
								<div class="home-block-section">
									<h4 class="title-home">
										<span id="lblResultadosBusquedas">Resultados de Busquedas </span>
									</h4>
									<div id="divContentProductos">
										<ul id="homefeatured"class="product_list grid row homefeatured">
											
										</ul>
									</div>
									<div id="divContentCarrito" >
									
									</div>
								</div>
								
							</div>
						</div>
						<div class="clearfix">
							<div class="container">
								<div class="row">
								</div>
							</div>
						</div>

					</div>
					<!-- #center_column -->
				</div>
				<!-- .row -->
			</div>
			<!-- #columns -->
		</div>
		<!-- .columns-container -->


		<!-- Footer -->
		<div class="footer-wrapper">
			<!-- #footer -->
			<div class="footer_middle">
				<div class="container">
					<div class="payment_footer">
						<span class="hidden-xs">Nuestros metodos de pago: </span>
						<ul class="payment_footer_img">
							<li><img style="height:80px;width:50x"
								src="http://www.readwriteweb.es/wp-content/uploads/2016/06/PayPal-2.jpg"
								alt="Payment methods" title="Payment methods" /></li>
							
						</ul>
					</div>
				</div>
			</div>
			<div class="footer_bottom">
				<div class="container">
					<div class="coppyright_contact">
						<div class="ybc_coppyright">
							Copyright 2016 <a href="#">Digital Store Co., LTD</a>. All rights
							reserved.
						</div>

						<div class="content">
							<b>Your company</b>,Sowad 2016-2
						</div>

						<div class="content">
							<label>Phone:</label> 0123-456-789
						</div>

						<div class="content">
							<label>Email:</label> sales@yourcompany.com
						</div>
					</div>
					<div class="ssl_logo_footer">
						<img
							src="resources/template/demo.etssoft.net/digital/modules/ybc_themeconfig/images/config/ssl.png"
							alt="" />
						<div class="content_ssl">
							This website is fully secure<br /> with SSL protection
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="section_social">
						<h4>Follow us:</h4>
						<ul>
							<li class="facebook"><a class="_blank" href="#"> <span><i
										class="icon-facebook"></i></span> <span class="icon_hover"><i
										class="icon-facebook"></i></span>
							</a></li>
							<li class="twitter"><a class="_blank" href="#"> <span><i
										class="icon-twitter"></i></span> <span class="icon_hover"><i
										class="icon-twitter"></i></span>
							</a></li>
							<li class="google-plus"><a class="_blank" href="#"
								rel="publisher"> <span><i class="fa fa-google"></i></span> <span
									class="icon_hover"><i class="fa fa-google"></i></span>
							</a></li>
							<li class="pinterest"><a class="_blank" href="#"> <span><i
										class="icon-pinterest-p"></i></span> <span class="icon_hover"><i
										class="icon-pinterest-p"></i></span>
							</a></li>
							<li class="vimeo"><a class="_blank" href="#"> <span><i
										class="fa fa-vimeo"></i></span> <span class="icon_hover"><i
										class="fa fa-vimeo"></i></span>
							</a></li>
							<li class="instagram"><a class="_blank" href="#"> <span><i
										class="icon-instagram"></i></span> <span class="icon_hover"><i
										class="icon-instagram"></i></span>
							</a></li>
							<li class="youtube"><a class="_blank" href="#"> <span><i
										class="fa fa-youtube-play"></i></span> <span class="icon_hover"><i
										class="fa fa-youtube-play"></i></span>
							</a></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="scroll_top">
			<span>TOP</span>
		</div>
	</div>
	 <script type="text/javascript">
            var objParent;
            $(document).ready(function () {
            	objParent= new LibraryVM();
            });
 	</script>
	<!-- #page -->
</body>
</html>







