package controller;

public class Persona {
	
	private String nombre;
	private int edad;
	private String descripcion;
	
	public Persona() {
	}

	public Persona(int edad, String nombre, String descripcion) {
		
		this.edad = edad;
		this.nombre = nombre;
		this.descripcion = descripcion;

	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	public String toString() {
		return (this.nombre + " " + this.edad + " " + this.descripcion);
	}

}
