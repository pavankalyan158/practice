package br.unesp.feb.cti.politicosweb.controllers;

import br.unesp.feb.cti.politicosweb.DAO.UsuariosDAO;
import br.unesp.feb.cti.politicosweb.models.Usuarios;
import java.util.List;
import javax.ejb.EJB;

/**
 *
 * @author pedro
 */
public class UsuariosController {
    
    @EJB
    private UsuariosDAO usuariosDAO;
    
    public void alterar(Usuarios usuario){
        usuariosDAO.alterar(usuario);
    }
    
    public void excluir(Usuarios usuario){
        usuariosDAO.exlcuir(usuario);
    }
    
    public void inserir(Usuarios usuario){
        usuariosDAO.inserir(usuario);
    }
    
    public List<Usuarios> listarTodas(){
        return usuariosDAO.listarTodas();
    }
}
