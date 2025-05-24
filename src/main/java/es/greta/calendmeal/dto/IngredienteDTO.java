package es.greta.calendmeal.dto;

public class IngredienteDTO {

    private String nombre;
    private int cantidad;
    private String unidad;
    
    public IngredienteDTO() {
		
	}
    
    public IngredienteDTO(String nombre, int cantidad, String unidad) {
		super();
		this.nombre = nombre;
		this.cantidad = cantidad;
		this.unidad = unidad;
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


}
