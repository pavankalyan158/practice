package br.unesp.feb.cti.politicosweb.models;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author pedro
 */
@Entity
@Table(name = "favoritos", catalog = "PoliticosJava", schema = "public")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Favoritos.findAll", query = "SELECT f FROM Favoritos f"),
    @NamedQuery(name = "Favoritos.findByDeputadoId", query = "SELECT f FROM Favoritos f WHERE f.deputadoId = :deputadoId"),
    @NamedQuery(name = "Favoritos.findByNome", query = "SELECT f FROM Favoritos f WHERE f.nome = :nome"),
    @NamedQuery(name = "Favoritos.findByUsuarioId", query = "SELECT f FROM Favoritos f WHERE f.usuarioId = :usuarioId"),
    @NamedQuery(name = "Favoritos.findByPartido", query = "SELECT f FROM Favoritos f WHERE f.partido = :partido"),
    @NamedQuery(name = "Favoritos.findByEstado", query = "SELECT f FROM Favoritos f WHERE f.estado = :estado"),
    @NamedQuery(name = "Favoritos.findByStatus", query = "SELECT f FROM Favoritos f WHERE f.status = :status"),
    @NamedQuery(name = "Favoritos.findByIdFavorito", query = "SELECT f FROM Favoritos f WHERE f.idFavorito = :idFavorito")})
public class Favoritos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "deputado_id")
    private String deputadoId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "nome")
    private String nome;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "usuario_id")
    private String usuarioId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "partido")
    private String partido;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "estado")
    private String estado;
    @Basic(optional = false)
    @NotNull
    @Column(name = "status")
    private int status;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "id_favorito")
    private String idFavorito;

    public Favoritos() {
    }

    public Favoritos(String idFavorito) {
        this.idFavorito = idFavorito;
    }

    public Favoritos(String idFavorito, String deputadoId, String nome, String usuarioId, String partido, String estado, int status) {
        this.idFavorito = idFavorito;
        this.deputadoId = deputadoId;
        this.nome = nome;
        this.usuarioId = usuarioId;
        this.partido = partido;
        this.estado = estado;
        this.status = status;
    }

    public String getDeputadoId() {
        return deputadoId;
    }

    public void setDeputadoId(String deputadoId) {
        this.deputadoId = deputadoId;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(String usuarioId) {
        this.usuarioId = usuarioId;
    }

    public String getPartido() {
        return partido;
    }

    public void setPartido(String partido) {
        this.partido = partido;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getIdFavorito() {
        return idFavorito;
    }

    public void setIdFavorito(String idFavorito) {
        this.idFavorito = idFavorito;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idFavorito != null ? idFavorito.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Favoritos)) {
            return false;
        }
        Favoritos other = (Favoritos) object;
        if ((this.idFavorito == null && other.idFavorito != null) || (this.idFavorito != null && !this.idFavorito.equals(other.idFavorito))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.unesp.feb.cti.politicosweb.models.Favoritos[ idFavorito=" + idFavorito + " ]";
    }
    
}
