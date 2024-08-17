package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.Solicitudes;

public interface SolicitudesDAO {

	
	public List<Solicitudes> findAll();
	
	public Solicitudes findOne(int id);
	
	public void add(Solicitudes solicitudes);
	
	public void up(Solicitudes solicitudes);
	
	public void del(int id);
	
}
