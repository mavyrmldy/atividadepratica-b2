package application.model;
 
import jakarta.annotation.Generated;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.GeneratedValue;
 
@Entity
@Table( name = "jogos")
public class Jogo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(nullable = false)
    private String titulo;
    @ManyToOne
    @JoinColumn(name = "id_genero", nullable = false)
    private Genero genero;
    @Column(nullable = false)
    private byte multiplayer; 
 
   
    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }
    public String getTitulo() {
        return titulo;
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    public Genero getGenero() {
        return genero;
    }
    public void setGenero(Genero genero) {
        this.genero = genero;
    }
    public byte getMultiplayer() {
        return multiplayer;
    }

    public void setMultiplayer(byte multiplayer) {
        this.multiplayer = multiplayer;
    }
 
}