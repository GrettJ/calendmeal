package es.greta.calendmeal.dto;

import java.util.List;

public class RecetaDTO {

	private Long id;
	private String nombre;
	private String instrucciones;
	private List<IngredienteDTO> ingredientes;
	
	public RecetaDTO() {
	}
	
	public RecetaDTO(Long id, String nombre, String instrucciones, List<IngredienteDTO> ingredientes) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.instrucciones = instrucciones;
		this.ingredientes = ingredientes;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getInstrucciones() {
		return instrucciones;
	}

	public void setInstrucciones(String instrucciones) {
		this.instrucciones = instrucciones;
	}

	public List<IngredienteDTO> getIngredientes() {
		return ingredientes;
	}

	public void setIngredientes(List<IngredienteDTO> ingredientes) {
		this.ingredientes = ingredientes;
	}

}
