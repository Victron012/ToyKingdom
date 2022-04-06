<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Toy Kingdon</title>
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
			
			.campo:focus, .campoImg:focus{
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
				color: black;
				border-radius: 24px;
				transition: 0.25s;
				font-size: 20px;
			}
			
			.imgAtu{
				border: 0;
				background: rgba(0, 0, 0, 0.0);
				display: block;
				margin: 20px;
				width: 540px;
				height: 200px;
				outline: none;
				border-radius: 24px;
				transition: 0.25s;
				position: relative;
				top: -20px;
				right: 20px;
			}
			
			select option {
			    background: #049DD9;
			}
					
			input[type="file"]{
				display: none;
			}
			
			#insira{
				position: relative;
				top: 85px;
			}
		</style>
	</head>
	<body>
		<div id="principal">
			<div id="cabecalho">		
				<a href="indexOperador.jsp">
					<img src="img\Logo.png" id="logo">
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
					<button id="login_" class="btnEsquerda">
						<a href="Login.jsp"  class="classe1"> 
						Login
						</a>
					</button>
				</span>
					
			</div>
			
			<div id="conteudo">
				<h1 align="center">Atualizar Brinquedos</h1>
        		<jsp:useBean id="brinquedo" scope="session" class="br.edu.unicid.bean.Brinquedo" />
		        <form action="ServletBrinquedo?cmd=atualizar" method="post">
		            <center>
		            <table border="0" id="tabela">
					<form action="ServletBrinquedo" method="get">
						
						<input type="hidden" name="id" value="<%= brinquedo.getIdBrinquedo() %>">
						<tr>
		 					<th>Nome:</th>
							<td><input type="text" name="Nome" size="20" maxlength="30" required value="<%= brinquedo.getNomeBrinquedo()%>" class="campo"></td>
							<th>Marca:</th>
							<td><input type="text" name="Marca" size="15" maxlength="30" value="<%= brinquedo.getMarcaBrinquedo()%>" class="campo"></td>
							<th>Categoria:</th>
							<td><select type="text" name="Categoria" class="campo"> 
									<option value=<%= brinquedo.getCategoriaBrinquedo()%>><%= brinquedo.getCategoriaBrinquedo()%></option>
									<option value="acao">Ação</option>
							  		<option value="aventura">Aventura</option>
							  		<option value="carros">Carros</option>
							  		<option value="bonecas">Bonecas</option>
							  		<option value="pelucia">Bichos de Pelúcia</option>
							  		<option value="educativos">Brinquedos Educativos</option>
								  	<option value="tabuleiro">Jogos de Tabuleiro</option>
								  	<option value="games">Games</option> 
							 	</select>
							 </td>
						</tr>
						
						<tr><td></td></tr>
						<tr><td></td></tr>
						
						<tr>
							<th>Faixa Etária:</th>
							<td><input type="text" name="FaixaEtaria" size="15" maxlength="30" value="<%= brinquedo.getFaixaEtaria()%>" class="campo"></td>
							
							<th>Imagem:</th>
							<td colspan="4" rowspan="7"><label class="campoImg"><img src="img/<%= brinquedo.getImg() %>" class="imgAtu"><input type="file" name="Img" size="30" maxlength="30" class="campoImg"></label></td>
							
						</tr>
						
						<tr><td></td></tr>
						<tr><td></td></tr>
						
						<tr>
							<th>Preço:</th>
							<td><input type="text" name="Preco"  size="12" maxlength="30" required value="<%= brinquedo.getPrecoBrinquedo()%>" class="campo"></td>
						</tr>
						
						<tr><td></td></tr>
						<tr><td></td></tr>
						
						<tr>
							<th>Parcelas:</th>
							<td><select type="text" name="Parcelas" class="campo">
									<option value=<%= brinquedo.getParcelas()%>><%= brinquedo.getParcelas()%>x S/juros</option> 
									<option value="1">1x S/juros</option>
							  		<option value="2">2x S/juros</option>
							  		<option value="3">3x S/juros</option>
							  		<option value="4">4x S/juros</option>
							  		<option value="5">5x S/juros</option>
							  		<option value="6">6x S/juros</option>
							  		<option value="7">7x S/juros</option>
							  		<option value="8">8x S/juros</option>
							  		<option value="9">9x S/juros</option>
							  		<option value="10">10x S/juros</option>
							  		<option value="11">11x S/juros</option>
							  		<option value="12">12x S/juros</option>
							 	</select>
							 </td>
						</tr>
						
						<tr><td></td></tr>
						<tr><td></td></tr>
						
						<tr>
							<th>Descrição:</th>
							<td colspan="6"><input type="text" name="Descricao" maxsize="30" maxlength="100" value="<%= brinquedo.getDescricao()%>" class="campo"></td>
						</tr>
			
						<tr>
		                    <td colspan="6" align="center">
		                        <input type="submit" name="btnAlterar" value="Confirmar Atualização" class="botao" style="width:230px;"/>
		                    </td>
		                </tr>	
							
		            </table>
		            </center>
		        </form>
			</div>
			
			<div id="rodape">
				<img src="img\LogoRodape.png" id="logo_rodape">
			</div>
		</div>
	</body>
</html>