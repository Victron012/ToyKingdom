<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Excluir Brinquedos</title>
		<link  rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="style/estrutura.css">
		<style>		
			#tabela{
				position: relative;
				right: 10px;
			}
			
			th{
				font-size: 30px;
				font-weight: normal;			
			}
			
			#preco{
				font-size: 20px;
			}
			
			.campo{
				border: 0;
				background: none;
				display: block;
				margin: 20px;
				text-align: center;
				border: 2px solid #049DD9;
				padding: 14px 10px;
				width: 180px;
				outline: none;
				color: white;
				border-radius: 24px;
				transition: 0.25s;
			}
			
			.campo:focus, .campoImg:hover{
				border-color: #FE640B;
				
			}
			
			.campoImg{
				border: 0;
				background: rgba(0, 0, 0, 0.0);
				display: block;
				margin: 20px;
				text-align: center;
				border: 2px solid #049DD9;
				padding: 14px 10px;
				width: 540px;
				height: 200px;
				outline: none;
				border-radius: 24px;
				transition: 0.25s;
			}
		</style>
	</head>
	<body>
		<div id="principal">
			<div id="cabecalho">	
				<a href="indexOperador.jsp">
					<img src="img\ProjetoJava.png" id="logo">
				</a>	
				<span id="nomePagina">
					<img src="img/NomePag.png" id="nomePagina">
				</span>			
			</div>
			
		    <div id="barrinha">
				<span class="botaoEsquerda">
					<button id="incluir_" class="btnEsquerda">
						<a href="incluir.jsp"  class="classe1"> 
						Incluir
						</a>
					</button>
				</span>
				
				<br><br>
				
				<span class="botaoEsquerda">
					<button id="atualizar_" class="btnEsquerda">
						<a href="atualizar.jsp"  class="classe1">
						Atualizar
						</a>
					</button>	
				</span>
				
				<br><br>
				
				<span class="botaoEsquerda">
					<button id="consultar_" class="btnEsquerda">
						<a href="consultar.jsp"  class="classe1">
						Consultar
						</a>
					</button>	
				</span>
				
				<br><br>
				
				<span class="botaoEsquerda">
					<button id="excluir_" class="btnEsquerda">
						<a href="excluir.jsp"  class="classe1"> 
						Excluir
						</a>
					</button>	
				</span>
				
				<br><br>
				
				  <span class="botaoEsquerda">
					<button id="listar_" class="btnEsquerda">
						<a href="ServletBrinquedo?cmd=listar" class="classe1 id="teste">
						Listar
						</a>
					</button>	
				</span>
					
				<br><br>
				
				<span class="botaoEsquerda">
					<button id="cadastro_" class="btnEsquerda">
						<a href="cadastro.jsp"  class="classe1"> 
						Cadastro
						</a>
					</button>
				</span>
			</div>
			
			<div id="conteudo" >

			<h1 align="center">Exclusão de Brinquedo</h1>
			<jsp:useBean id="brinquedo" scope="session" class="br.edu.unicid.bean.Brinquedo" />
				<form action="ServletBrinquedo?cmd=excluir" method="post">
					<center>
						<input type="hidden" name="id" value="<%= brinquedo.getIdBrinquedo() %>">
						<table border="0">
							<tr>
			 					<th>Nome:</th>
								<td><input type="text" name="Nome" size="20" maxlength="30" required value="<%= brinquedo.getNomeBrinquedo()%>" readonly class="campo"></td>
								 <th>Marca:</th>
								<td><input type="text" name="Marca" size="15" maxlength="30" value="<%= brinquedo.getMarcaBrinquedo()%>"readonly class="campo"></td>
								<th>Categoria:</th>
								<td><input type="text" name="Categoria" value=<%= brinquedo.getCategoriaBrinquedo()%> class="campo"></td>
							</tr>
							
							<tr><td></td></tr>
							<tr><td></td></tr>
							
							<tr>
								<th>Faixa Etária:</th>
								<td><input type="text" name="FaixaEtaria" size="15" maxlength="30" value="<%= brinquedo.getFaixaEtaria()%>" readonly class="campo"></td>
								
								<th>Imagem:</th>
								<td colspan="4" rowspan="7"><img src="img/<%= brinquedo.getImg() %>" class="campoImg"></td>
							</tr>
							
							<tr><td></td></tr>
							<tr><td></td></tr>
							
							<tr>
								<th>Preço:</th>
								<td><input type="text" name="Preco"  size="12" maxlength="30" value="<%= brinquedo.getPrecoBrinquedo()%>" readonly class="campo"></td>
							</tr>
							
							<tr><td></td></tr>
							<tr><td></td></tr>
							
							<tr>
								<th>Parcelas:</th>
								<td><input type="text" name="Parcelas" value=<%= brinquedo.getParcelas()%> class="campo"></td>
							</tr>
							
							<tr><td></td></tr>
							<tr><td></td></tr>
							
							<tr>
								<th>Descrição:</th>
								<td colspan="6"><input type="message" name="Descricao" value="<%= brinquedo.getDescricao()%>" readonly class="campo"></td>
							</tr>
							
							<tr>
								<td colspan="7" align="center"><input type="submit" maxlength="60" size="60" name="btnExcluir" value="Confirma Exclusão" class="botao"/></td>
							</tr>
						</table>
					</center>
				</form>
			</div>
			
			<div id="rodape">
				<img src="img\ProjetoJava.png" id="logo_rodape">
				<span id="faleConosco">

			</div>
		</div>
	</body>
</html>