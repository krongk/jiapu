jQuery(document).ready(function($){
function equalHeight(group) {
	var tallest = 0;
	group.each(function() {
		var thisHeight = $(this).height();
		if(thisHeight > tallest) {
			tallest = thisHeight;
		}
	});
	group.height(tallest);
}

$(document).ready(function() {
	equalHeight($('div.pm'));
	equalHeight($('div.feat_bl'));
	equalHeight($('div.portfel'));
	equalHeight($('div.our_bl'));
});

//$(document).ready(function() {
	//$('div.port_img img').corner('10px');
//});

$('#menu-menu li .sub_gl').parent('li').addClass('li_parent');

$('#menu-menu #menu-item-278').addClass('styleswitch');
$('#menu-menu #menu-item-279').addClass('styleswitch');
$('#menu-menu #menu-item-280').addClass('styleswitch');

$('#menu-menu .menu-item-279 a').attr('rel', 'green');
$('#menu-menu .menu-item-280 a').attr('rel', 'pink');










































});