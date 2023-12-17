function EliminarTicket(){
	window.location="delete.jsp";
}

const borrar = document.getElementById("borrar");

borrar.addEventListener("click", EliminarTicket)