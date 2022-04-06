package br.edu.unicid.web;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;


import br.edu.unicid.bean.Brinquedo;
import br.edu.unicid.dao.BrinquedoDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ServletBrinquedo")
public class ServletBrinquedo extends HttpServlet {


	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		        response.setContentType("text/html;charset=UTF-8");
	        // a variável cmd indica o tipo de ação - incluir, alterar, consulta.....
	        String cmd = request.getParameter("cmd");
	        String categoria = request.getParameter("categoria");
	        // cria um objeto dao - CRUD
	        BrinquedoDao dao;
	        // cria um objeto do tipo aluno
	        Brinquedo brinquedo = new Brinquedo();
	        if (cmd != null) {
	            try {
	                // inicializa os atributos da classe Alunos
	            	brinquedo.setIdBrinquedo(Integer.parseInt(request.getParameter("id")));  
	            	brinquedo.setNomeBrinquedo(request.getParameter("Nome"));
	                brinquedo.setMarcaBrinquedo(request.getParameter("Marca"));
	                brinquedo.setCategoriaBrinquedo(request.getParameter("Categoria"));
	                brinquedo.setFaixaEtaria(request.getParameter("FaixaEtaria"));
	                brinquedo.setPrecoBrinquedo(Double.parseDouble(request.getParameter("Preco")));
	                brinquedo.setParcelas(Integer.parseInt(request.getParameter("Parcelas")));
	                brinquedo.setDescricao(request.getParameter("Descricao"));
	               // brinquedo.setImg(request.getParameter("txtImg"));
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
	            // lista todos os alunos
	            if (cmd.equalsIgnoreCase("listar")) {
	                List brinquedoList = dao.todosBrinquedos();
	                // cria uma sessão para encaminhar a lista para uma JSP
	                request.setAttribute("brinquedoList", brinquedoList);
	                // redireciona para a JSP mostraAlunosCads
	                rd = request.getRequestDispatcher("/mostrarBrinquedos.jsp");
	            }
	            
	            // incluir aluno
	            else if (cmd.equalsIgnoreCase("incluir")) {
	                dao.salvar(brinquedo);
	                rd = request.getRequestDispatcher("/incluir.jsp");
	             
	            // consulta aluno para exclusão    
	            } else if (cmd.equalsIgnoreCase("exc")) {
	                brinquedo = dao.procurarBrinquedo(brinquedo.getIdBrinquedo());
	                HttpSession session = request.getSession(true);
	                session.setAttribute("brinquedo", brinquedo);
	                rd = request.getRequestDispatcher("/formExcBrinquedo.jsp");
	             
	            // exclui aluno
	            } else if (cmd.equalsIgnoreCase("excluir")) {
	                dao.excluir(brinquedo);
	                rd = request.getRequestDispatcher("/indexOperador.jsp");
	            
	            // consulta aluno para alteração
	            }  else if (cmd.equalsIgnoreCase("atu")) {
	                brinquedo = dao.procurarBrinquedo(brinquedo.getIdBrinquedo());
	                HttpSession session = request.getSession(true);
	                session.setAttribute("brinquedo", brinquedo);
	                rd = request.getRequestDispatcher("/formAtuBrinquedo.jsp");
	             
	            // consulta aluno
	            } else if (cmd.equalsIgnoreCase("con")) {
	                brinquedo = dao.procurarBrinquedo(brinquedo.getIdBrinquedo());
	                HttpSession session = request.getSession(true);
	                session.setAttribute("brinquedo", brinquedo);
	                rd = request.getRequestDispatcher("/formConBrinquedo.jsp");
	            
	             // altera aluno    
	            } else if (cmd.equalsIgnoreCase("atualizar")) {
	                dao.atualizar(brinquedo);
	                rd = request.getRequestDispatcher("/indexOperador.jsp");
	            
	            
	            } else if (cmd.equalsIgnoreCase("pag")) {
	            	brinquedo = dao.procurarBrinquedo(brinquedo.getIdBrinquedo());
	                HttpSession session = request.getSession(true);
	                session.setAttribute("brinquedo", brinquedo);
	                rd = request.getRequestDispatcher("/mostrarPaginaBrinquedo.jsp");
	            
	            } else if (cmd.equalsIgnoreCase("cat")) {
	                List brinquedoList = dao.categoriaBrinquedo(categoria);
	                request.setAttribute("brinquedoList", brinquedoList);
	                rd = request.getRequestDispatcher("/mostrarBrinquedos.jsp");
	            }    
	            
	            
	            
	            // direciona para a página principal
	             else if (cmd.equalsIgnoreCase("principal")) {
	                rd = request.getRequestDispatcher("/index.jsp");
	            }            
	            // executa a ação de direcionar para a página JSP
	            rd.forward(request, response);
	        } catch (Exception e) {
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
