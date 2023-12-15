package com.example.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.models.Empleado;
@Controller
@RequestMapping
public class ControllerEmpleado {

	
	
	public class EmpleadoController {

		@GetMapping("/empleado")
			public String abrir (Model modelo) {
			modelo.addAttribute("empleado", new Empleado());
				return "frmEmpleado";
			
			
		}
		@PostMapping("/procesar")
		public String procesar (Model modelo, Empleado obj) {
			modelo.addAttribute("acodigo", obj.getCodigo());
			modelo.addAttribute("anombre", obj.getNombre());
			modelo.addAttribute("aapellido", obj.getApellido());
			modelo.addAttribute("acargo", obj.getCargo());
			modelo.addAttribute("aaniosservicio", obj.getAniosservicio());
		
			return "frmEmpleado";
		}
	}
}
