package com.distribuida.cotroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.distribuida.dao.FacturaDAO;
import com.distribuida.dao.Factura_detalleDAO;

@Controller
@RequestMapping("/Facturacion")
public class FacturaController {

	
	@Autowired
	private FacturaDAO facturaFAO;
	
	@Autowired
	private Factura_detalleDAO facturaDetalleFAO;

	@GetMapping("/findAll")
	public String findAll(ModelMap modelMap) {
	
		modelMap.addAttribute("facturas",facturaFAO.findALL());
		
		return"listar-facturas";
		
	}


}
