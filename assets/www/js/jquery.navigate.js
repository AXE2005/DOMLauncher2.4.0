/*
 * jQuery.navigate - Allow any group of dom elements to be navigated with the keyboard arrows
 * Tom Moor, http://tommoor.com
 * Copyright (c) 2011 Tom Moor
 * MIT Licensed
 * @version 1.1
 */
var current_sel=null;
(function($){

  var handleKeyDown;
  var handleMouseOver;
  var navigate;
  var options;
  var $current;
  var $collection;
  var defaults = {
   mouse: true,
   activeClass: 'selected',
   selectedDefault: null,
   onSelect: function(){},
   onFocus: function(){},
   keys: {
    up: 38,
    down: 40,
    left: 37,
    right: 39,
    select: 13
   }
  };
        
  var methods = {
    init : function(o){
    
      options = $.extend(defaults, o);
      //console.log(options.selectedDefault);
      if(selectedDefault==null){
        options.selectedDefault=this.first();
      }
      //console.log(selectedDefault);
      
      if(current_sel==null){
        $current = options.selectedDefault.addClass(options.activeClass);
        current_sel = $current;
      }else{
        $current = current_sel;
      }
      $collection = this;

      handleKeyDown = function(e){
      
        if(!e){ var e = window.event; }
        
	      switch(e.keyCode){  
	        case options.keys.up:
	          navigate(0,-1);
	          break;
	        case options.keys.down:
	          navigate(0,1);
	          break;
	        case options.keys.left:
	          navigate(-1,0);
	          break;
	        case options.keys.right:
	          navigate(1,0);
	          break;
	        case options.keys.select:
	          $current.trigger('click');
	          break;
	      }
      };
      
      
      handleMouseOver = function(){
        $('.'+options.activeClass).removeClass(options.activeClass).trigger('blur');
        //$current = $(this).addClass(options.activeClass).trigger('focus');
        if(current_sel==null){
          $current = $(this).addClass(options.activeClass).trigger('focus');
          current_sel = $current;
        }else{
          $current = current_sel;
        }
      };
      

      navigate = function(x, y) {
      
        var delta = x+y;
        var $closest = $current;
        var $closestr = null;
        var $difference = 0;
        var $differencer = 0;
        var rangetrigger=12000;//px
        var a,b,d,dx,dy;

        $collection.each(function(){
          a = $(this); 
          //console.log($(this));

          // ignore the current node
          if(a === $current) return;
          if(x !== 0) d = parseInt(a.offset().left - $current.offset().left);
          if(y !== 0) d = parseInt(a.offset().top - $current.offset().top);
          
          // node not in the right direction, drop out
          if(!(d > 0 && delta > 0) && !(d < 0 && delta < 0)) return;
          
          // distance calc would normally require sqrt but can be left out as we are only comparing.    
          dx = Math.pow($current.offset().left-a.offset().left,2);
          dy = Math.pow($current.offset().top-a.offset().top,2);
          b=dx+dy;

          // closest node so far over all?
          if(b < $difference || $difference === 0){
            $closest = a; $difference = b;
          }
            
          //closest node taking into account the range trigger
          if(y !== 0 && (b < $differencer || $differencer === 0) && dx<rangetrigger){
            $closestr = a; $differencer = b;
          }else if(x !== 0 && (b < $differencer || $differencer === 0) && dy<rangetrigger){
            $closestr = a; $differencer = b;
          }
        });

        if($closestr !== null){
          $closest=$closestr;
        }

        /*if(y !== 0  && !($closestr.offset().top==$closestx.offset().top && $closestr.offset().left==$closestx.offset().left)){
          $closest=$closestx;
        }

        if(x !== 0  && !($closestr.offset().top==$closesty.offset().top && $closestr.offset().left==$closesty.offset().left)){
          $closest=$closesty;
        }*/
        
        // no more nodes in this direction
        if(options.wrap && $current === $closest) return;
        
        // trigger node as active
        $current.removeClass(options.activeClass);
        $current.trigger('blur');
        $closest.addClass(options.activeClass);
        $closest.trigger('focus');
        $current = $closest;
        current_sel=$current;
        options.onFocus.call($current);
      }
      
      
      // bind key and mouse events if required
      $(document).bind('keydown', handleKeyDown);
      $collection.bind('click', options.onSelect);
      if(options.mouse) $collection.bind('mouseover', handleMouseOver);
 
      return this;
    },
    destroy : function(){
    
      // if bound to a collection
      if($collection){
      
        // unbind all plugin event handlers
        $(document).unbind('keydown', handleKeyDown);
        $collection.unbind('mouseover', handleMouseOver);
        $collection.unbind('click', options.onSelect);
        $collection.removeClass(options.activeClass);
        
        // recover memory
        options = $current = $collection = null;
      }
      
      return this;
    }
  };


  $.fn.navigate = function( method ) {
    
    // Method calling logic
    if ( methods[method] ) {
      return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
    } else if ( typeof method === 'object' || ! method ) {
      return methods.init.apply( this, arguments );
    } else {
      $.error( 'Method ' +  method + ' does not exist on jQuery.navigate' );
    }    
  
  };
})(jQuery);
