/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio.entidade;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author paulo
 */
@Entity
@Table(name = "assistente_social")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AssistenteSocial.findAll", query = "SELECT a FROM AssistenteSocial a"),
    @NamedQuery(name = "AssistenteSocial.findByCodAssistente", query = "SELECT a FROM AssistenteSocial a WHERE a.codAssistente = :codAssistente"),
    @NamedQuery(name = "AssistenteSocial.findByNome", query = "SELECT a FROM AssistenteSocial a WHERE a.nome = :nome"),
    @NamedQuery(name = "AssistenteSocial.findByCpf", query = "SELECT a FROM AssistenteSocial a WHERE a.cpf = :cpf"),
    @NamedQuery(name = "AssistenteSocial.findByRegistroFunc", query = "SELECT a FROM AssistenteSocial a WHERE a.registroFunc = :registroFunc")})
public class AssistenteSocial implements Serializable {
    private static final long serialVersionUID = 1L;
    
    
    @Id
    @Basic(optional = false)
    @Column(name = "cod_assistente", nullable=false)
    @SequenceGenerator(name="Assistente_Generator", sequenceName="sq_assistente_social", allocationSize=1)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="Assistente_Generator")
    private Integer codAssistente;
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 80)
    @Column(name = "nome")
    private String nome;
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "cpf")
    private String cpf;

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 80)
    @Column(name = "registro_func")
    private String registroFunc;

    public AssistenteSocial() {
    }

    public AssistenteSocial(Integer codAssistente) {
        this.codAssistente = codAssistente;
    }

    public AssistenteSocial(Integer codAssistente, String nome, String cpf, String registroFunc) {
        this.codAssistente = codAssistente;
        this.nome = nome;
        this.cpf = cpf;
        this.registroFunc = registroFunc;
    }

    public Integer getCodAssistente() {
        return codAssistente;
    }

    public void setCodAssistente(Integer codAssistente) {
        this.codAssistente = codAssistente;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRegistroFunc() {
        return registroFunc;
    }

    public void setRegistroFunc(String registroFunc) {
        this.registroFunc = registroFunc;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codAssistente != null ? codAssistente.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AssistenteSocial)) {
            return false;
        }
        AssistenteSocial other = (AssistenteSocial) object;
        if ((this.codAssistente == null && other.codAssistente != null) || (this.codAssistente != null && !this.codAssistente.equals(other.codAssistente))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "negocio.entidade.AssistenteSocial[ codAssistente=" + codAssistente + " ]";
    }
    
}
