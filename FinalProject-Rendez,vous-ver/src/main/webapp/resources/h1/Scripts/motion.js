$(function(){
	$('.cate').mouseover(function(){
		$(this).addClass("cate2").removeClass("cate3");	
		$(this).siblings().removeClass("cate2").addClass("cate").addClass("cate3");
	});
	$('.cate2').mouseover(function(){
		$(this).addClass("cate2").removeClass("cate3");
		$(this).siblings().removeClass("cate2").addClass("cate").addClass("cate3");
	});

	$('.controlled_off').hide();

	$('.close_bt','.main3_cont').click(function(){
		 if($('.region_box','.main3_cont').height() >1){
			 $('.close_bt','.main3_cont').html('▼');
			 $('.region_box','.main3_cont').stop().animate({ height: '0' }, 500);

		} else {
			$('.close_bt','.main3_cont').html('▲');
		   autoHeightAnimate($('.region_box','.main3_cont'),500);
		}
	});

	$('#back_fixed').mouseenter(function(){
		$( ".cate2" ).removeClass("cate2").addClass("cate").removeClass("cate3");
		$( ".cate" ).removeClass("cate3");
		$('.sub_cate_box').removeClass('sub_cate_box').addClass('sub_cate_box_none');
		$(this).removeClass('fixed').addClass('fixed2');
	});

	$('.box','.region_box').click(function(){
		$(this).toggleClass('box2');
	});

	$('.item','.cate_sub_cont').mouseover(function(){	
		$(this).find('img').show();
	});
	$('.item','.cate_sub_cont').mouseout(function(){	
		$(this).find('img').hide();
	});

});


function cate(val){
	var va = val;
	$('.cont1').removeClass('cont1').addClass('cont1none');
	$('.cont1none').eq(val).removeClass('cont1none').addClass('cont1');
	$('.fixed2').removeClass('fixed2').addClass('fixed');

	$('.sub_cate_box').removeClass('sub_cate_box').addClass('sub_cate_box_none');
	$('.sub_cate_box_none').eq(val).removeClass('sub_cate_box_none').addClass('sub_cate_box');
}

function autoHeightAnimate(element, time){
  	var curHeight = element.height(); // Get Default Height
	var autoHeight = element.css('height', 'auto').height(); // Get Auto Height
    	  element.height(curHeight); // Reset to Default Height
    	  element.stop().animate({ height: autoHeight }, time); // Animate to Auto Height
}

