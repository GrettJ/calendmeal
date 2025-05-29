package es.greta.calendmeal.dto;

public class RecetaResumenDTO {

    private Long id;
    private String nombre;
    private String alergenos; // Optional: A string representation of allergens

    public RecetaResumenDTO() {
    }

    public RecetaResumenDTO(Long id, String nombre, String alergenos) {
        this.id = id;
        this.nombre = nombre;
        this.alergenos = alergenos;
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

    public String getAlergenos() {
        return alergenos;
    }

    public void setAlergenos(String alergenos) {
        this.alergenos = alergenos;
    }
}