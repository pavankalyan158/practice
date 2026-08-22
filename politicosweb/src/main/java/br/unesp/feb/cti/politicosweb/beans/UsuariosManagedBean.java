package br.unesp.feb.cti.politicosweb.beans;

import br.unesp.feb.cti.politicosweb.controllers.UsuariosController;
import br.unesp.feb.cti.politicosweb.models.Usuarios;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;

/**
 *
 * @author pedro
 */
@ManagedBean(name = "usuariosMB")
@SessionScoped
public class UsuariosManagedBean {
    
    private Usuarios usuario;
    private List<Usuarios> usuarioLista = new ArrayList<Usuarios>();
    
    @EJB
    private UsuariosController usuarioController;
    
    public UsuariosManagedBean(){}


    public Usuarios getUsuarios() {
        return usuario;
    }


    public void setUsuarios(Usuarios usuario) {
        this.usuario = usuario;
    }


    public List<Usuarios> getAssistenteLista() {
        return this.usuarioLista;
    }

 
    public void recuperaUsuarios(){
      this.usuarioLista = usuarioController.listarTodas();
    }
    
    public String alterar(){
        usuarioController.alterar(this.getUsuarios());
        this.recuperaUsuarios();
        return "/usuarios/ListaUsuarios";
    }
    
    public String excluir(){
        usuarioController.excluir(this.getUsuarios());
        this.recuperaUsuarios();
        return "/usuarios/ListaUsuarios";
    }
    
    public String inserir(){
        usuarioController.inserir(this.getUsuarios());
        this.recuperaUsuarios();
        return "/usuarios/ListaUsuarios";
    }
            
    public String listar(){
        this.recuperaUsuarios();
        return "/usuarios/listarUsuarios";
    }
            
            
    public String montarPaginaParaAlteracao() {
        return "/usuarios/AlterarUsuarios";
    }

    public String montarPaginaParaExclusao() {
        return "/usuarios/ExcluirUsuarios";
    }

    public String montarPaginaParaInsercao() {
        this.usuario = new Usuarios();
        return "/usuarios/inserirUsuarios";
    }

}
