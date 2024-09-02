	package com.distribuida.entities;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;



@Component
@Entity
@Table(name= "solicitudes")
public class Solicitudes {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name= "id_solicitud")
	private int idSolicitud;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Column(name= "fecha_solicitud_peticion")
	private Date fechasolicitudpeticion;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Column(name= "fecha_solicitud_revision")
	private Date fechasolicitudrevision;
	@Column(name= "estado_solicitud")
	private String estadosolicitud;
	@Column(name= "pdf_solicitud")
	private String pdfsolicitud;
	@Column(name= "descripcion")
	private String descripcion;
	
	/*@JoinColumn(name="id_empleados")
	@ManyToOne(cascade = { CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	private Empleado empleado;*/
	public Solicitudes() {}
	
	
	public Solicitudes(int idSolicitud, Date fechasolicitudpeticion, Date fechasolicitudrevision
			,String estadosolicitud, String pdfsolicitud, String descripcion) {
		
				this.idSolicitud= idSolicitud;
				this.fechasolicitudpeticion= fechasolicitudpeticion;
				this.fechasolicitudrevision=fechasolicitudrevision;
				this.estadosolicitud=estadosolicitud;
				this.pdfsolicitud=pdfsolicitud;
				this.descripcion=descripcion;
				//this.idEmpleado=idEmpleado;
	}

	@Override
	public String toString() {
		return "Solicitudes [idSolicitud=" + idSolicitud + ", fechasolicitudpeticion=" + fechasolicitudpeticion
				+ ", fechasolicitudrevision=" + fechasolicitudrevision + ", estadosolicitud=" + estadosolicitud
				+ ", pdfsolicitud=" + pdfsolicitud + ", descripcion=" + descripcion + "]";
	}

	public int getIdSolicitud() {
		return idSolicitud;
	}

	public void setIdSolicitud(int idSolicitud) {
		this.idSolicitud = idSolicitud;
	}

	public Date getFechasolicitudpeticion() {
		return fechasolicitudpeticion;
	}

	public void setFechasolicitudpeticion(Date fechasolicitudpeticion) {
		this.fechasolicitudpeticion = fechasolicitudpeticion;
	}

	public Date getFechasolicitudrevision() {
		return fechasolicitudrevision;
	}

	public void setFechasolicitudrevision(Date fechasolicitudrevision) {
		this.fechasolicitudrevision = fechasolicitudrevision;
	}

	public String getEstadosolicitud() {
		return estadosolicitud;
	}

	public void setEstadosolicitud(String estadosolicitud) {
		this.estadosolicitud = estadosolicitud;
	}

	public String getPdfsolicitud() {
		return pdfsolicitud;
	}

	public void setPdfsolicitud(String pdfsolicitud) {
		this.pdfsolicitud = pdfsolicitud;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	/*public Empleado getEmpleado() {
		return empleado;
	}

	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}*/

	


	

	
	
	
}
