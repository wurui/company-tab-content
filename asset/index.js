define([],function(){
  return {
    init:function($mod){
    	var $box=$('.box',$mod);
    	$('.tabs',$mod).on('click','.tab',function(){
    		$box.attr('data-on',this.getAttribute('data-index'))
    	})
    }
  }
})
