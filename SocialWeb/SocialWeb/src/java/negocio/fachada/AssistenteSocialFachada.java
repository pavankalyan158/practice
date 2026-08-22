/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio.fachada;

import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import negocio.entidade.AssistenteSocial;
import persistencia.AssistenteSocialDAO;

/**
 *
 * @author paulo
 */
@Stateless
public class AssistenteSocialFachada {

    @EJB
    private AssistenteSocialDAO assistanteSocialDAO;
    
    public void alterar(AssistenteSocial assistente){
        assistanteSocialDAO.alterar(assistente);
    }
    
    public void excluir(AssistenteSocial assistente){
        assistanteSocialDAO.exlcuir(assistente);
    }
    
    public void inserir(AssistenteSocial assistente){
        assistanteSocialDAO.inserir(assistente);
    }
    
    public List<AssistenteSocial> listarTodas(){
        return assistanteSocialDAO.listarTodas();
    }
}
