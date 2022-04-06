<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Toy Kingdon</title>
		<link  rel="stylesheet" href="style/style.css">
		<link rel="stylesheet" href="style/estrutura.css">
		<style>
			.box{
				background: linear-gradient(rgba(57, 20, 175, 0.623),rgba(33, 7, 114, 0.781));
			}
			
			#telaPrincipal{
				border:0;
				background: none;
				display: block;
				margin: 20px auto;
				text-align: center;
				border: 2px solid  #049DD9;
				padding: 14px 10px;
				width: 200px;
				outline: none;
				color: white;
				border-radius: 24px;
				transition: 0.25s;
				cursor: pointer;
				text-decoration: none;
			}	
			
			#telaPrincipal:hover{
				border-color: #FE640B;	
			}
		</style>
	</head>
	<body>
		<div id="principal">
			<div id="cabecalho">
			
			<a href="index.jsp">
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
					<button id="cadastro_" class="btnEsquerda">
						<a href="cadastro.jsp"  class="classe1"> 
						Cadastro
						</a>
					</button>
				</span>	
			</div>	
			<div id="conteudo">
				<div class="box">
					<h2>A sua solicitação não pode ser realizada!</h2>
					<a href="index.jsp" class="classe1"><input id="telaPrincipal" type="button" value="Voltar a tela principal"></a>
				</div>
			</div>
		
			<div id="rodape">
				<img src="img\LogoRodape.png" id="logo_rodape">
			</div>
		</div>
	</body>
</html>