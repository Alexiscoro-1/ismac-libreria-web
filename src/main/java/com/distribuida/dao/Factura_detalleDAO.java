package com.distribuida.dao;

import java.util.List;
import com.distribuida.entities.Factura_detalle;
public interface Factura_detalleDAO {

	public List<Factura_detalle> findALL();
	
	public Factura_detalle findOne(int id);
	
	public void add(Factura_detalle Factura_detalle);
	
	public void up(Factura_detalle Factura_detalle);
	
	public void del(int id);
	
}
