
package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import curso.microforum.jee.spring.dao.RegionsDAO;

 
@Controller
public class MiJdbcController {
 
	
	@Autowired
    private RegionsDAO regionDAO;
	
	@RequestMapping("/listaregiones")
	public String listaregiones(Model modelo) {
		
		List<Regions> lista_regiones = null;
		
		lista_regiones = regionDAO.list();
		modelo.addAttribute("lista_regiones", lista_regiones);
 
		return "mostrarregiones";
	}
	
}