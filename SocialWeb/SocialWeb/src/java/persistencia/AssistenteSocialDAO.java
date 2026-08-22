/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import negocio.entidade.AssistenteSocial;

/**
 *
 * @author paulo
 */
@Stateless
public class AssistenteSocialDAO {
    
    @PersistenceContext
    private EntityManager em;
    
    public void alterar(AssistenteSocial assistente){
        em.merge(assistente);
    }
    
    public void exlcuir(AssistenteSocial assistente){
        AssistenteSocial assistenteAExluir = em.merge(assistente);
        em.remove(assistenteAExluir);
    }
    
    public void inserir(AssistenteSocial assistente){
        em.persist(assistente);
    }
    
    public List<AssistenteSocial> listarTodas(){
        return em.createQuery("select assistente from AssistenteSocial as assistente order by assistente.nome").getResultList();
    }
}
