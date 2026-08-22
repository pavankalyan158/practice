/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package apresentacao.managedbean;

import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import negocio.entidade.AssistenteSocial;
import negocio.fachada.AssistenteSocialFachada;

/**
 *
 * @author paulo
 */
@ManagedBean(name = "assistenteManagedBean")
@SessionScoped
public class AssistenteManagedBean {
    
    private AssistenteSocial assistenteSocial;
    private List<AssistenteSocial> assistenteLista = new ArrayList<AssistenteSocial>();
    
    @EJB
    private AssistenteSocialFachada assistenteFachada;
    
    public AssistenteManagedBean(){}


    public AssistenteSocial getAssistenteSocial() {
        return assistenteSocial;
    }


    public void setAssistenteSocial(AssistenteSocial assistenteSocial) {
        this.assistenteSocial = assistenteSocial;
    }


    public List<AssistenteSocial> getAssistenteLista() {
        return this.assistenteLista;
    }

 
    public void recuperaAssistentesSociais(){
      this.assistenteLista = assistenteFachada.listarTodas();
    }
    
    public String alterar(){
        assistenteFachada.alterar(this.getAssistenteSocial());
        this.recuperaAssistentesSociais();
        return "/AssistenteSocial/ListaAssistenteSocial";
    }
    
    public String excluir(){
        assistenteFachada.excluir(this.getAssistenteSocial());
        this.recuperaAssistentesSociais();
        return "/AssistenteSocial/ListaAssistenteSocial";
    }
    
    public String inserir(){
        assistenteFachada.inserir(this.getAssistenteSocial());
        this.recuperaAssistentesSociais();
        return "/AssistenteSocial/ListaAssistenteSocial";
    }
            
    public String listar(){
        this.recuperaAssistentesSociais();
        return "/AssistenteSocial/ListaAssistenteSocial";
    }
            
            
    public String montarPaginaParaAlteracao() {
        return "/AssistenteSocial/AlterarAssistenteSocial";
    }

    public String montarPaginaParaExclusao() {
        return "/AssistenteSocial/ExcluirAssistenteSocial";
    }

    public String montarPaginaParaInsercao() {
        this.assistenteSocial = new AssistenteSocial();
        return "/AssistenteSocial/inserirAssistenteSocial";
    }
            
            
            
}
