package es.greta.calendmeal.model;

import jakarta.persistence.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name="Ingredientes")
public class Ingrediente {
    @Id
    private int idIngrediente;

    @Column(nullable = false)
    private String nombre;


    @ManyToMany
    @JoinTable(
            name = "Ingredientes_Alergenos",
            joinColumns = @JoinColumn(name = "id_ingredientes"),
            inverseJoinColumns = @JoinColumn(name = "id_recetas")
    )
    private Set<Alergeno> alergenos;

    public int getidIngrediente(){
        return idIngrediente;
    }
    

    public void setidIngrediente(int idIngrediente) {
        this.idIngrediente = idIngrediente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Set<Alergeno> getAlergenos() {
        return alergenos;
    }

    public void setAlergenos(Set<Alergeno> alergenos) {
        this.alergenos = alergenos;
    }

}
