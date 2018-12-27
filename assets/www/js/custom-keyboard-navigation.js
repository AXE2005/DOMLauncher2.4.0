/**
 * Javascript functions 
 * @author: Jaime Beltran
 * version: 1
 * date: 2018-11-23
 * requires: jQuery
 */



function initNavigate(){
	$('.selectable:visible').navigate('destroy');
	//console.log(current_sel);
	$('.selectable:visible').navigate({
		activeClass: 'selected',
		selectedDefault: $("#selectedDefault"),
		onSelect:function(){
			//$('.selectable').navigate('destroy');
			//$(this).find("a")[0].click();
		},
		onFocus:function(){
			//console.log(this);
		}
	});
}

$(document).ready(function() {
	/**
	 * Menu navigation with keyboard
	 */
	$(".activable").on("click",function(){
		$(".activable").removeClass('active');
		$(this).addClass('active');
	});

	//this requires jquery.navigate.js file or  jquery.navigate.min.js
	initNavigate();

	$('.collapse').on('hidden.bs.collapse', function () {
	  initNavigate();
	});

	$('.collapse').on('show.bs.collapse', function () {
	  initNavigate();
	});
});