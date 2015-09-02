package controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ServicioWebController {
	
	@RequestMapping(path = "/personaJSON", produces = "application/json")
	@ResponseBody
	public ResponseEntity<Persona>personaJSON() {
		
		Persona p = null;
		p = new Persona(33, "Pepe", "Mola mazo");
		return new ResponseEntity<Persona>(p, HttpStatus.OK);
	}

}
