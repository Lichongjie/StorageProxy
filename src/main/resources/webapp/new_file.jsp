<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="">
<style type="text/css">
.clearfix {
	clear: both;
}
.clearfix:after {
	clear: both;
	content: "";
	display: block;
	height: 0;
	visibility: hidden;
}
.fl {
	float: left;
}
.fr {
	float: right;
}
.pager {
	max-width: 800px;
	text-align: center;
	margin-bottom: 30px;
	display: inline-block;
}
.pager a{
	cursor: pointer;
}
.pager a,
.pager span {
  	width: 29px;
    height: 28px;
    border: 1px #cccccc solid;
    margin-left: -1px;
    color: #8a8a8a;
    display: inline-block;
    line-height: 28px;
    float: left;
    font-size: 12px;
    text-decoration: none;
    margin: 0 2px;
}
.pager a:hover,
.pager span:hover {
	border-color: #3897cd;
	color: #3897cd;
	position: relative;
	z-index: 1;
}
.pager span.current {
	background-color: #3897cd;
	color: #fff;
	border-color: #3897cd;
	position: relative;
	z-index: 1;
}
.pager .pg-first,
.pager .pg-prev,
.pager .pg-next,
.pager .pg-last{
	background: url(images/page_bg.jpg) 0 0 no-repeat;
}
.pager .pg-first:hover,
.pager .pg-prev:hover,
.pager .pg-next:hover,
.pager .pg-last:hover{
	background: url(images/page_bg_hover.jpg) 0 0 no-repeat;
}
.pager .pg-prev,
.pager .pg-prev:hover{
	background-position: 0 -28px;
}
.pager .pg-next,
.pager .pg-next:hover{
	background-position: -29px -28px;
}
.pager .pg-last,
.pager .pg-last:hover{
	background-position: -29px 0;
}
.pager .pg-prev[disabled='true'],
.pager .pg-prev[disabled='true']:hover{
	cursor: default;
	background-image: url(images/page_bg.jpg);
}
.pager .pg-next[disabled='true'],
.pager .pg-next[disabled='true']:hover{
	cursor: default;
	background-image: url(images/page_bg.jpg);
}
.pager .pg-prev[disabled='true'],
.pager .pg-next[disabled='true']{
	border-color: #eeeeee;
}
.pager span.els{
	border-color: transparent;
}

.pagerHtmlWrap{
	width: 800px;
	margin: 30px auto;
}
.pagerHtmlWrap .cc_cells{
	width: 100%;
	height: 35px;
	padding: 5px 0;
	border-bottom: 1px #cccccc solid;
}
.pagerHtmlWrap .cc_cells a{
	color: #454545;
	font-size: 14px;
	line-height: 35px;
	text-decoration: none;
}
.pagerHtmlWrap .cc_cells a span{
	display: inline-block;
	width: 25%;
	text-align: left; 
	margin: 0;
}
</style>

</head>
<body>
<!-- <div class="pager clearfix" style="margin-top:30px;">
	<a href="" class="pg-first"></a>
	<a href="" class="pg-prev"></a>
    <a href="">1</a>
    <span class="current">2</span>
    <a href="">3</a>
    <a href="">4</a>
    <a href="">5</a>
    <a href="">6</a>
    <a href="">7</a>
    <a href="">8</a>
    <a href="">9</a>
    <a href="">10</a>
    <span class="els">...</span>
	<a href="" class="pg-next" disabled="true"></a>
	<a href="" class="pg-last"></a>
</div> -->
<div style="text-align: center;margin:20px auto;"><div id="pager" class="pager clearfix"></div></div>

<div id="wraper" class="pagerHtmlWrap"></div>
<div style="text-align: center;">
<div id="pager2" class="pager clearfix"></div>
</div>

</body>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/jquery.z-pager.js" charset="utf-8"></script>
<script type="text/javascript">
$("#pager").zPager({
	totalData: 60
});
$("#pager2").zPager({
	url:'pageData.json',
	htmlBox: $('#wraper'),
	btnShow: false
	// ,
	// dataRender: function(data){
	// 	console.log(data+'---data-2');
	// }
});

</script>
</html>