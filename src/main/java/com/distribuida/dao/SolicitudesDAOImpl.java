package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.Solicitudes;


@Repository
public class SolicitudesDAOImpl implements SolicitudesDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
		
	@Override
	@Transactional
	public List<Solicitudes> findAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession(); 
		return session.createQuery("from Solicitudes", Solicitudes.class).getResultList();
	}

	@Override
	@Transactional
	public Solicitudes findOne(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(Solicitudes.class, id);
	}

	@Override
	@Transactional
	public void add(Solicitudes solicitudes) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(solicitudes);
	}

	@Override
	@Transactional
	public void up(Solicitudes solicitudes) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(solicitudes);
	}

	@Override
	@Transactional
	public void del(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(findOne(id));
	}

}
