package com.example.models;

public class Empleado {
	private int codigo;
	private String nombre;
	private String apellido;
	private String cargo;
	private int aniosservicio;
	
	
	
	
	public Empleado() {
		super();
	}
	

	public Empleado(int codigo, String nombre, String apellido, String cargo, int aniosservicio) {
		super();
		this.codigo = codigo;
		this.nombre = nombre;
		this.apellido = apellido;
		this.cargo = cargo;
		this.aniosservicio = aniosservicio;
	}


	public int getCodigo() {
		return codigo;
	}


	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellido() {
		return apellido;
	}


	public void setApellido(String apellido) {
		this.apellido = apellido;
	}


	public String getCargo() {
		return cargo;
	}


	public void setCargo(String cargo) {
		this.cargo = cargo;
	}


	public int getAniosservicio() {
		return aniosservicio;
	}


	public void setAniosservicio(int aniosservicio) {
		this.aniosservicio = aniosservicio;
	}


	public int SueldoBasico() {
		if(cargo.equals("jefe"))
			return 5000;
		else if (cargo.equals("analista"))
			return 4000;
		else if (cargo.equals("programador"))
			return 3000;
		else if (cargo.equals("soporte"))
			return 2000;
		else
			return 0;
	}
	
	public double BonoAniosServc (){
		if (aniosservicio <=2)
			return SueldoBasico()*0.05;
		else if(aniosservicio > 2 && aniosservicio<=4)
			return SueldoBasico()*0.07;
		else if(aniosservicio > 4)
			return SueldoBasico()*0.1;
		else
			return 0;
	}
	public double SueldoNeto() {
		return SueldoBasico()+ BonoAniosServc();
	}

}
