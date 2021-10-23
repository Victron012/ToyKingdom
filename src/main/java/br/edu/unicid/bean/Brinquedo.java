package br.edu.unicid.bean;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.util.Date;

public class Brinquedo {

	// padrão JavaBean ou POJO – Classe com getters/setters, mais métodos
	// construtores
	private int idBrinquedo;
	private String nomeBrinquedo;
	private String marcaBrinquedo;
	private String categoriaBrinquedo;
	private String faixaEtaria;
	private double precoBrinquedo;
	private int parcelas;
	private String descricao;
	//private Image img;
	
	private int caAluno;
	private String nomeAluno;
	private String emailAluno;
	private Date dtaNasc;
	private int idadeAluno;
	private String endAluno;

	public Brinquedo(int idBrinquedo, String nomeBrinquedo, String marcaBrinquedo, String categoriaBrinquedo, String faixaEtaria, double precoBrinquedo, int parcelas, String descricao) {
		this.idBrinquedo = idBrinquedo;
		this.nomeBrinquedo = nomeBrinquedo;
		this.marcaBrinquedo = marcaBrinquedo;
		this.categoriaBrinquedo = categoriaBrinquedo;
		this.faixaEtaria = faixaEtaria;
		this.precoBrinquedo = precoBrinquedo;
		this.parcelas = parcelas;
		this.descricao = descricao;
		//this.img = img;
	}
	
	public Brinquedo() {
	}
	
	public int getIdBrinquedo() {
		return idBrinquedo;
	}
	public void setIdBrinquedo(int idBrinquedo) {
		this.idBrinquedo = idBrinquedo;
	}
	
	public String getNomeBrinquedo() {
		return nomeBrinquedo;
	}
	public void setNomeBrinquedo(String nomeBrinquedo) {
		this.nomeBrinquedo = nomeBrinquedo;
	}
	
	public String getMarcaBrinquedo() {
		return marcaBrinquedo;
	}
	public void setMarcaBrinquedo(String marcaBrinquedo) {
		this.marcaBrinquedo = marcaBrinquedo;
	}
	
	public String getCategoriaBrinquedo() {
		return categoriaBrinquedo;
	}
	public void setCategoriaBrinquedo(String categoriaBrinquedo) {
		this.categoriaBrinquedo = categoriaBrinquedo;
	}
	
	public String getFaixaEtaria() {
		return faixaEtaria;
	}
	public void setFaixaEtaria(String faixaEtaria) {
		this.faixaEtaria = faixaEtaria;
	}
	
	public double getPrecoBrinquedo() {
		return precoBrinquedo;
	}
	public void setPrecoBrinquedo(double precoBrinquedo) {
		this.precoBrinquedo = precoBrinquedo;
	}
	
	public int getParcelas() {
		return parcelas;
	}
	public void setParcelas(int parcelas) {
		this.parcelas = parcelas;
	}
	
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
//	public Image getImg() {
//		return img;
//	}
//	public void setImg() {
//		this.img = img;
//	}
	
	
	/*public Aluno(int caAluno, String nomeAluno, String emailAluno, Date dtaNasc, String endAluno, int idadeAluno) {
		this.caAluno = caAluno;
		this.nomeAluno = nomeAluno;
		this.emailAluno = emailAluno;
		this.dtaNasc = dtaNasc;
		this.endAluno = endAluno;
		this.idadeAluno = idadeAluno;
	}

	public Aluno() {
	}

	public int getCaAluno() {
		return caAluno;
	}

	public void setCaAluno(int caAluno) {
		this.caAluno = caAluno;
	}

	public String getNomeAluno() {
		return nomeAluno;
	}

	public void setNomeAluno(String nomeAluno) {
		this.nomeAluno = nomeAluno;
	}

	public String getEmailAluno() {
		return emailAluno;
	}

	public void setEmailAluno(String emailAluno) {
		this.emailAluno = emailAluno;
	}

	public Date getDtaNasc() {
		return dtaNasc;
	}

	public void setDtaNasc(Date dtaNasc) {
		this.dtaNasc = dtaNasc;
	}

	public int getIdadeAluno() {
		return idadeAluno;
	}

	public void setIdadeAluno(int idadeAluno) {
		this.idadeAluno = idadeAluno;
	}

	public String getEndAluno() {
		return endAluno;
	}

	public void setEndAluno(String endAluno) {
		this.endAluno = endAluno;
	}*/

}
