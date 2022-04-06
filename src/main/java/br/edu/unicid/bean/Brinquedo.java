package br.edu.unicid.bean;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.text.DecimalFormat;
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
	private String img;
	private double parcelado;
	
	

	public Brinquedo(int idBrinquedo, String nomeBrinquedo, String marcaBrinquedo, String categoriaBrinquedo, String faixaEtaria, double precoBrinquedo, int parcelas, String descricao, String img) {
		this.idBrinquedo = idBrinquedo;
		this.nomeBrinquedo = nomeBrinquedo;
		this.marcaBrinquedo = marcaBrinquedo;
		this.categoriaBrinquedo = categoriaBrinquedo;
		this.faixaEtaria = faixaEtaria;
		this.precoBrinquedo = precoBrinquedo;
		this.parcelas = parcelas;
		this.descricao = descricao;
		this.img = img;
	}
	
	DecimalFormat numberFormat = new DecimalFormat("#.00");
	
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
	
	public String getImg() {
		return img;
	}
	public void setImg(String string) {
		this.img = img;
	}

	public String getParcelado() {
		  this.parcelado = precoBrinquedo/(double)parcelas;	  
		  return String.format("%.2f", parcelado);
	}	
}
