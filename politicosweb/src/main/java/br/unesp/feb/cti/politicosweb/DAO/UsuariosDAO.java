package br.unesp.feb.cti.politicosweb.DAO;

import br.unesp.feb.cti.politicosweb.models.Usuarios;
import javax.persistence.PersistenceContext;
import javax.persistence.EntityManager;
import java.util.List;
import javax.ejb.Stateless;

@Stateless
public class UsuariosDAO {

    @PersistenceContext
    private EntityManager em;

    public void alterar(Usuarios usuario) {
        em.merge(usuario);
    }

    public void exlcuir(Usuarios usuario) {
        Usuarios usuarioExcluir = em.merge(usuario);
        em.remove(usuarioExcluir);
    }

    public void inserir(Usuarios usuario) {
        em.persist(usuario);
    }

    public List<Usuarios> listarTodas() {
        return em.createQuery("SELECT u FROM Usuarios u").getResultList();
    }
}
