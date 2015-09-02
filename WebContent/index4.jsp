<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">

var xmlHttp = new XMLHttpRequest();

function llamadaRest()
{
	var name = document.getElementById("nombre").value;
	var age = document.getElementById("edad").value;
	var description = document.getElementById("descripcion").value;
	
	var persona = {                            // creo un objeto de persona
		    nombre:name,
		    edad:age, 
		    descripcion:description
		};
	
	xmlHttp.onreadystatechange = procesarEvento; // llamo a la funcion que comprueba la respuesta del servidor
	xmlHttp.open('PUT', 'personaJSONPUT', true); // indicamos como vamos a enviar los datos, en este caso con el metodo GET al archivo meses.php?num= el valor que le indiquemos en el textbox
	xmlHttp.setRequestHeader('Accept', 'application/json'); // en la petici�n acepto el formato application/json
	xmlHttp.setRequestHeader('Content-Type', 'application/json'); // describo el formato de la informaci�n que viaja en el body
	xmlHttp.send(JSON.stringify(persona)); // aqu� serializo el objeto persona en un mensaje json y se lo paso como cuerpo de la petici�n
	
}

function procesarEvento()
{
   
  if(xmlHttp.readyState==4) //ya hemos recibido respuesta del servidor
  {
      if(xmlHttp.status==200) // y el c�digo de la cabecera http es bueno
          {
    	  	muestraPersona(xmlHttp.responseText); // responseText contiene el body de la respuesta en texto plano
          }
      else
      {
          alert("Ha ocurrido un error"+ xmlHttp.status +":"+ xmlHttp.statusText);
      }
  }

}

function muestraPersona(texto)
{
	alert("He recibido " + texto);
	var objetoJson = JSON.parse(texto);
	document.getElementById("nombre").value = objetoJson.nombre;
	document.getElementById("edad").value = objetoJson.edad;
	document.getElementById("descripcion").value = objetoJson.descripcion;
	
	
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Bienvenido</title>
</head>
<body>

	<label for="nombre">Nombre</label><input type = "text" name = "nombre" id="nombre"/>
	<label for="edad">Edad</label><input type = "text" name = "edad" id="edad"/>
	<label for="descripcion">Descripci�n</label><textarea name= "descripcion" rows="3" cols="8" id="descripcion"></textarea>
<input type="button" onclick="llamadaRest();" value="Trae Persona"></input>
</body>
</html>