
	function login(){
		
		var uid = device.uuid;
		var room_form = $("#room").val();
		var ip_form = $("#ip").val();
		
		localStorage.setItem("mem_registro", ip_form);
		localStorage.setItem("mem_room", room_form);
		
		$.get("http://"+ ip_form + "/servicios/tv.php",{room: room_form, uid: uid}, tvres, "jsonp");
 
		function tvres(respuesta){
	 
		console.log("parseo respuesta header y contenido ");

		var contenido = respuesta.contenido;
		var header = respuesta.header;
		
		$(header).appendTo("head");
		$('#cuerpo').html(contenido);
		
		}
	}
  
	function aaap(appa){
		$.showLoading({name: 'circle-fade',allowHide: true}); 
		window.launch.app({package:appa, activity:'MainActivity'});
	}


	function autoIni(){
	alert ("Inicio funciones");
	var registro = localStorage.getItem("mem_registro");
	var room = localStorage.getItem("mem_room");
	var uid = device.uuid;
	alert ("uid es: " +uid);
	if (registro == null){
		
		// TV no registrado, imprimo formulario para registrarlo.
		var contenido = '<nav class="navbar navbar-dark bg-gradient bg-dark"><a class="navbar-brand" href="#"><img src="./imgs/logo.png" class="d-inline-block align-top" alt="Movich Hotels logo"></a></nav><div class="container content px-5"><div class="row h-100 justify-content-center align-items-center mt-2 mb-2 overflow-hidden"><div class="col-6 vh-67 my-vh-1-5"><div class="row d-flex flex-column"><div class="col-12"><div class="card bg-overlay text-white"><div class="card-body"><h1 class="card-title text-warning">SmartHotel TV</h1><p class="card-text">Este TV aún no se encuentra registrado en SmartHost, ingrese los datos y registrelo:</p></div></div></div><div class="col-12"><div class="card bg-overlay text-white"><div class="card-body"><div class="row"><div class="col-5 mx-4 border border-light">Dirección SmartHost</div><div class="col-5 text-center border border-light"><input type="text" id="ip" placeholder="xxx.xxx.xxx.xx" ></div><div class="w-100"></div><div class="col-5 mx-4 mt-2 border border-light">Habitación</div><div class="col-5 mt-2 text-center border border-light"><input type="text" id="room" placeholder="xxxx" ></div><div class="w-100"></div><div class="col-12 mt-3 text-right"><button onClick="login()"> Registrar! </button></div><div class="w-100"></div></div></div></div></div></div></div></div></div><nav class="navbar fixed-bottom navbar-dark bg-overlay"><div class="d-flex flex-nowrap my-1 w-100 px-0"><div class="col text-center"><a href="apps.html" class="btn btn-block w-100 btn-warning text-left"><i class="fas fa-hotel"></i>APLICACIONES</a></div></div></nav> <script type="text/javascript"></script><script src="js/dmd.js"></script><script src="js/funciones.js"></script> ';
		$('#cuerpo').html(contenido);
		
		
	} else {
		
		$.get("http://"+ registro + "/servicios/tv.php",{room: room, uid: uid}, tvres, "jsonp");
 
		function tvres(respuesta){
	 
		console.log("parseo respuesta header y contenido ");

		var contenido = respuesta.contenido;
		var header = respuesta.header;
		
		$(header).appendTo("head");
		$('#cuerpo').html(contenido);
		
		//$.hideLoading();
		
		}
		
		
	}

}