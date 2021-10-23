package br.edu.unicid.dao;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;

import br.edu.unicid.bean.Brinquedo;
import br.edu.unicid.util.ConnectionFactory;

public class BrinquedoDao {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private Brinquedo brinquedo;

	public BrinquedoDao() throws Exception {
		// chama a classe ConnectionFactory e estabele uma conexão
		try {
			this.conn = ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new Exception("erro: \n" + e.getMessage());
		}
	}

	// método de salvar
	public void salvar(Brinquedo brinquedo) throws Exception {
		if (brinquedo == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "INSERT INTO produtos (Id, nomeProduto, marca, categoria, faixaEtaria, preco, numParcelas, descricao) values (?,?, ?, ?, ?, ?, ?, ?)";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, brinquedo.getIdBrinquedo());
			ps.setString(2, brinquedo.getNomeBrinquedo());
			ps.setString(3, brinquedo.getMarcaBrinquedo());
			ps.setString(4, brinquedo.getCategoriaBrinquedo());
			ps.setString(5, brinquedo.getFaixaEtaria());
			ps.setDouble(6, brinquedo.getPrecoBrinquedo());
			ps.setInt(7, brinquedo.getParcelas());
			ps.setString(8, brinquedo.getDescricao());		
			
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao inserir dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// método de atualizar
	public void atualizar(Brinquedo brinquedo) throws Exception {
		if (brinquedo == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "UPDATE produtos set nomeProduto=?, marca=?, categoria=?, faixaEtaria=?,  preco=?, numParcelas=?,descricao=? WHERE id = ?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setString(1, brinquedo.getNomeBrinquedo());
			ps.setString(2, brinquedo.getMarcaBrinquedo());
			ps.setString(3, brinquedo.getCategoriaBrinquedo());
			ps.setString(4, brinquedo.getFaixaEtaria());
			ps.setDouble(5, brinquedo.getPrecoBrinquedo());
			ps.setInt(6, brinquedo.getParcelas());
			ps.setString(7, brinquedo.getDescricao());
			ps.setInt(8, brinquedo.getIdBrinquedo());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao alterar dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// método de excluir
	public void excluir(Brinquedo brinquedo) throws Exception {
		if (brinquedo == null)
			throw new Exception("O valor passado nao pode ser nulo");
		try {
			String SQL = "DELETE FROM produtos WHERE Id = ?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, brinquedo.getIdBrinquedo());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			throw new Exception("Erro ao excluir dados " + sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps);
		}
	}

	// procurar aluno
	public Brinquedo procurarBrinquedo(int idBrinquedo) throws Exception {

		try {
			String SQL = "SELECT  * FROM produtos WHERE Id=?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, idBrinquedo);
			rs = ps.executeQuery();
			if (rs.next()) {
				int id = rs.getInt(1);
				String nome = rs.getString(2);
				String marca = rs.getString(3);
				String categoria = rs.getString(4);
				String faixaEtaria = rs.getString(5);
				double preco = rs.getDouble(6);
				int parcelas = rs.getInt(7);
				String descricao = rs.getString(8);	
				 
				
				brinquedo = new Brinquedo(id, nome, marca, categoria, faixaEtaria, preco, parcelas, descricao);
			}
			return brinquedo;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}

	// listar todos os alunos
	public List todosBrinquedos() throws Exception {
		try {
			conn = this.conn;
			ps = conn.prepareStatement("SELECT * FROM produtos");
			rs = ps.executeQuery();
			List<Brinquedo> list = new ArrayList<Brinquedo>();
			while (rs.next()) {
				int id = rs.getInt(1);
				String nome = rs.getString(2);
				String marca = rs.getString(3);
				String categoria = rs.getString(4);
				String faixaEtaria = rs.getString(5);
				double preco = rs.getDouble(6);
				int parcelas = rs.getInt(7);
				String descricao = rs.getString(8);
				
				
					
				list.add(new Brinquedo(id, nome, marca, categoria, faixaEtaria, preco, parcelas, descricao));
			}
			return list;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
}
