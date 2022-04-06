package br.edu.unicid.bean;

public class Usuario {
	
	private int idUsuario;
	private String nomeUsuario;
	private String email;
	private String senha;
	
	public Usuario(int id, String nome, String emailUsuario, String senha2) {
		this.idUsuario = idUsuario;
		this.nomeUsuario = nomeUsuario;
		this.email = email;
		this.senha = senha;	
	}
	
	public Usuario() {
	}

	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	
	public String getNomeUsuario(){
		return nomeUsuario;
	}
	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}
	
	public String getEmail(){
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getSenha(){
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
}
