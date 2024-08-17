package com.distribuida.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.SolicitudesDAO;
import com.distribuida.entities.Solicitudes;

@Controller//Encargado de manejar solicitudes HTTP
@RequestMapping("/solicitudes") //Path principal
public class SolicitudesController {
	
	@Autowired
	private SolicitudesDAO solicitudesDAO;
	
	
	@GetMapping("/findAll") //path secundario
	public String findAll(ModelMap modelMap) {
		//try {
		List<Solicitudes> solicitudes=solicitudesDAO.findAll();
		modelMap.addAttribute("solicitudes", solicitudes);
		
		//modelMap.addAttribute("solicitudes", solicitudesDAO.findAll());
		return "solicitudes-listar"; //nombre del forulario web
		//}catch(Exception e) {
			//TODO: handle exception
		//}
	}
	//findOne actualiza o borra datos del formulario
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idSolicitudes")@Nullable Integer 
			idSolicitud, @RequestParam("opcion")@Nullable Integer opcion
			, ModelMap modelMap ) {
		//try{
	
		if(idSolicitud != null) {
			Solicitudes solicitud = solicitudesDAO.findOne(idSolicitud);
			modelMap.addAttribute("solicitudes", solicitud);
			
		}
		if(opcion == 1)return "solicitudes-add"; //El formulario web
		else return "solicitudes-del";
		
		//}catch (Exception e){
			//TODO: handle exception
	}
	@PostMapping("/add")
	public String add(@RequestParam("idSolicitud")@Nullable Integer idSolicitud
			,@RequestParam("fecha_solicitud_peticion")@Nullable String fecha_solicitud_peticion
			,@RequestParam("fecha_solicitud_revision")@Nullable String fecha_solicitud_revision
			,@RequestParam("estado_solicitud")@Nullable String estado_solicitud
			,@RequestParam("pdf_solicitud")@Nullable String pdf_solicitud
			,@RequestParam("descripcion")@Nullable String descripcion
			,Model model
			){
		//try{
		if(idSolicitud ==null) {
			Solicitudes solicitudes=new Solicitudes(0,new Date(),new Date(), "En revision","pdf1","Revision de la cafetera");
			solicitudesDAO.add(solicitudes);
		}else {
			Solicitudes solicitudes=new Solicitudes(idSolicitud,new Date(),new Date(), "En revision","pdf1","Revision de la cafetera");
			solicitudesDAO.up(solicitudes);
		}
	
		return "redirect:/solicitudes/findAll";
	}
		
	//} catch (Exception e) {
	// TODO: handle exception
//}
	@GetMapping("/del")
	public String del(@RequestParam("idSolicitud") @Nullable Integer idSolicitud) {
		//try {
			solicitudesDAO.del(idSolicitud);
			return "redirect:/solicitudes/findAll";	
		//} catch (Exception e) {
			// TODO: handle exception
			//e.printStackTrace();
		//}
	}
}
