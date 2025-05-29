package es.greta.calendmeal.dto;

import java.util.List;

public class IngredienteDTO {

    private String nombre;
    private int cantidad;
    private String unidad;
    private List<String> alergenos;
    
    public IngredienteDTO() {
		
	}
    
    public IngredienteDTO(String nombre, int cantidad, String unidad, List<String> alergenos) {
		super();
		this.nombre = nombre;
		this.cantidad = cantidad;
		this.unidad = unidad;
		this.alergenos = alergenos;
	}

	public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

	public List<String> getAlergenos() {
		return alergenos;
	}


	public void setAlergenos(List<String> alergenos) {
		this.alergenos = alergenos;
	}
    
    


}
