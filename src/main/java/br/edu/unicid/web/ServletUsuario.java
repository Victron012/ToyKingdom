package br.edu.unicid.web;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import br.edu.unicid.bean.Brinquedo;
import br.edu.unicid.bean.Usuario;
import br.edu.unicid.dao.BrinquedoDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ServletUsuario")
public class ServletUsuario extends HttpServlet {


	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		        response.setContentType("text/html;charset=UTF-8");
	        // a variável cmd indica o tipo de ação - incluir, alterar, consulta.....
	        String cmd = request.getParameter("cmd");
	        String email = request.getParameter("email");
	        String senha = request.getParameter("senha");
	        String existe;
	        // cria um objeto dao - CRUD
	        BrinquedoDao dao;
	        // cria um objeto do tipo aluno
	        Usuario usuario = new Usuario();
	        if (cmd != null) {
	            try {
	                // inicializa os atributos da classe Alunos
	            	usuario.setIdUsuario(Integer.parseInt(request.getParameter("id")));  
	            	usuario.setNomeUsuario(request.getParameter("nome"));
	                usuario.setEmail(request.getParameter("email"));
	                usuario.setSenha(request.getParameter("senha"));
                } catch (Exception ex) {
	                ex.printStackTrace();
                  }
	        }else {// erro caso o cmd for NULL
	        	RequestDispatcher rd = null;
            	rd = request.getRequestDispatcher("erro.jsp");
            	rd.forward(request, response);
	        }
	        try {
	        	// cria a instancia do objeto dao
	            dao = new BrinquedoDao();
	            RequestDispatcher rd = null;

	     
	             // incluir aluno
		            if (cmd.equalsIgnoreCase("cadastrar")) {
		                dao.cadastrar(usuario);
		                rd = request.getRequestDispatcher("Login.jsp");    
		            } else if(cmd.equalsIgnoreCase("login")) {
		            	existe = dao.validar(email, senha);
		            	if(existe=="s") {
		            		System.out.println("Usuario encontrado!");
		            		rd = request.getRequestDispatcher("/indexOperador.jsp");
		            	}else {
		            		System.out.println("Credenciais incorretas!!");
		            		rd = request.getRequestDispatcher("Login.jsp");
		            	}
		            }
	            // executa a ação de direcionar para a página JSP
	            rd.forward(request, response);
	        }catch (Exception e) {
	            e.printStackTrace();
	            throw new ServletException(e);
	        }
		} 

	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	        processRequest(request, response);
	    } 

	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	        processRequest(request, response);
	    }
}
