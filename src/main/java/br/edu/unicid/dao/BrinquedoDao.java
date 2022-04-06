package br.edu.unicid.dao;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import java.util.Enumeration.*;

import br.edu.unicid.bean.Brinquedo;
import br.edu.unicid.bean.Usuario;
import br.edu.unicid.util.ConnectionFactory;

public class BrinquedoDao {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private Brinquedo brinquedo;
	private Usuario usuario;

	
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
			//ps.setString(9, brinquedo.getImg());
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
			String SQL = "UPDATE produtos set nomeProduto=?, marca=?, categoria=?, faixaEtaria=?,  preco=?, numParcelas=?,descricao=?  WHERE id = ?";
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setString(1, brinquedo.getNomeBrinquedo());
			ps.setString(2, brinquedo.getMarcaBrinquedo());
			ps.setString(3, brinquedo.getCategoriaBrinquedo());
			ps.setString(4, brinquedo.getFaixaEtaria());
			ps.setDouble(5, brinquedo.getPrecoBrinquedo());
			ps.setInt(6, brinquedo.getParcelas());
			ps.setString(7, brinquedo.getDescricao());
			//ps.setString(8, brinquedo.getImg());
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
			String SQL = "SELECT * FROM produtos WHERE Id=?";
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
				String img = rs.getString(9);
				 
				
				brinquedo = new Brinquedo(id, nome, marca, categoria, faixaEtaria, preco, parcelas, descricao, img);
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
				String img = rs.getString(9);
				
				
					
				list.add(new Brinquedo(id, nome, marca, categoria, faixaEtaria, preco, parcelas, descricao, img));
			}
			return list;
		} catch (SQLException sqle) {
			throw new Exception(sqle);
		} finally {
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
	
	// método de cadastrar
		public void cadastrar(Usuario usuario) throws Exception {
			if (usuario == null)
				throw new Exception("O valor passado nao pode ser nulo");
			try {
				String SQL = "INSERT INTO usuarios (id, nomeUsuario, email, senha) values (?,?, ?, ?)";
				conn = this.conn;
				ps = conn.prepareStatement(SQL);
				ps.setInt(1, usuario.getIdUsuario());
				ps.setString(2, usuario.getNomeUsuario());
				ps.setString(3, usuario.getEmail());
				ps.setString(4, usuario.getSenha());
				ps.executeUpdate();
			} catch (SQLException sqle) {
				throw new Exception("Erro ao inserir dados " + sqle);
			} finally {
				ConnectionFactory.closeConnection(conn, ps);
			}
		}
		
		
		public List categoriaBrinquedo(String categoria) throws Exception {
			try {
				conn = this.conn;
				ps = conn.prepareStatement("select * from produtos where categoria=?");
				ps.setString(1, categoria);
				rs = ps.executeQuery();
				List<Brinquedo> list = new ArrayList<Brinquedo>();
				while (rs.next()) {
					int id = rs.getInt(1);
					String nome = rs.getString(2);
					String marca = rs.getString(3);
					String categoriaBrinquedo = rs.getString(4);
					String faixaEtaria = rs.getString(5);
					double preco = rs.getDouble(6);
					int parcelas = rs.getInt(7);
					String descricao = rs.getString(8);
					String img = rs.getString(9);
					
					
						
					list.add(new Brinquedo(id, nome, marca, categoriaBrinquedo, faixaEtaria, preco, parcelas, descricao, img));
				}
				return list;
			} catch (SQLException sqle) {
				throw new Exception(sqle);
			} finally {
				ConnectionFactory.closeConnection(conn, ps, rs);
			}
		}
		

		// metodo de validar usuario
			public String validar(String email, String senhaUsuario) throws Exception {
				System.out.println("emailUsuario: "+email);
			try {
				String SQL = "SELECT * FROM usuarios WHERE email=? AND senha=?";
				conn = this.conn;
				ps = conn.prepareStatement(SQL);
				ps.setString(1, email);
				ps.setString(2, senhaUsuario);
				rs = ps.executeQuery();
				String existe;
				if (rs.next()) {
					int id = rs.getInt(1);
					String nome = rs.getString(2);
					String emailUsuario = rs.getString(3);
					String senha = rs.getString(4);
					
					//System.out.println("Id DAO: "+id);
					//System.out.println("Nome DAO: "+nome);
					//System.out.println("Email DAO: "+emailUsuario);
					//System.out.println("Senha DAO: "+senha);
					usuario = new Usuario(id, nome, emailUsuario, senha);
					existe="s";
				} else {
					System.out.println("rs vazio");
					existe="n";
					}
				return existe;
			} catch (SQLException sqle) {
				throw new Exception(sqle);
			} finally {
				ConnectionFactory.closeConnection(conn, ps, rs);
			}
		}

			
		
	
}

