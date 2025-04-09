package es.greta.calendmeal.model;

import jakarta.persistence.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name="ingredientes")
public class Ingrediente {
    @Id
    private int id;

    @Column(nullable = false)
    private String nombre;


    @ManyToMany
    @JoinTable(
            name = "ingredientes_alergenos",
            joinColumns = @JoinColumn(name = "id_ingrediente"),
            inverseJoinColumns = @JoinColumn(name = "id_alergeno")
    )
    private Set<Alergeno> alergenos;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
