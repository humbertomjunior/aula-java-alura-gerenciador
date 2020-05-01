package br.com.alura.gerenciador.modelo;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

	private static List<Empresa> lista = new ArrayList<>();
	private static List<Usuario> listaUsuarios = new ArrayList<>();
	private static Integer chaveSequencial = 1;
	
	static {
		Empresa empresa1 = new Empresa();
		empresa1.setNome("Alura");
		empresa1.setId(Banco.chaveSequencial++);
		Empresa empresa2 = new Empresa();
		empresa2.setNome("Caelum");
		empresa2.setId(Banco.chaveSequencial++);
		lista.add(empresa1);
		lista.add(empresa2);
		
		Usuario user1 = new Usuario();
		user1.setLogin("nico");
		user1.setSenha("12345");
		Usuario user2 = new Usuario();
		user2.setLogin("humberto");
		user2.setSenha("3663");
		listaUsuarios.add(user1);
		listaUsuarios.add(user2);
	}
	
	public void adiciona(Empresa empresa) {
		Banco.lista.add(empresa);
		empresa.setId(Banco.chaveSequencial++);
	}
	
	public void remove(Integer id) {
		Iterator<Empresa> it = lista.iterator();
		while(it.hasNext()) {
			Empresa emp = it.next();
			if(emp.getId()==id) {
				it.remove();
			}
		}
//		for (Empresa empresa : lista) {
//			if(empresa.getId()==id) {
//				Banco.lista.remove(empresa);
//			}
//		}
		}
	
	public Empresa buscaEmpresaId(Integer id) {
		Iterator<Empresa> it = lista.iterator();
		while(it.hasNext()) {
			Empresa emp = it.next();
			if(emp.getId()==id) {
				return emp;
			}
		}return null;
	}
	
	public List<Empresa> getEmpresas(){
		return Banco.lista;
	}
	
	public Usuario existeUsuario(String login, String senha) {
		for (Usuario usuario : listaUsuarios) {
			if(usuario.ehIgual(login, senha)) {
				return usuario;
			}
		}
		
		return null;
	}
}
