<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="br.edu.unicid.bean.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
		<link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="style/principal.css">
		<style>
			div {
				border: 0.1px solid grey;
			}
			
			#logo {
				position: absolute; 
				top: 6px;
				width: 180px;
				height: 118px;
			}
			
			#logo_rodape {
				position: relative;
				top: -1px;
				left: 2px;
				width: 81px;
				height: 43px;
			}
			
			#parteSuperior {
				background-color: black;
				height: 1px;
			}
			
			#cabecalho {
				height: 120px;
				background: #FFFF3F;
			}
			
			#paginas_lateralEsquerda {
				display: flex;
				flex-direction: column;
				justify-content: center;
				justify-content: flex-start;
				background: linear-gradient(rgba(231, 67, 162, 0.623),rgba(164, 21, 103, 0.781));	
				background-color: #E666B0;
				height: 599px;
				width: 14.7%;
				text-align: center;
				float: left;
				font-size: 20px;
			}
			
			#conteudo {
				background: linear-gradient(rgba(57, 20, 175, 0.623),rgba(33, 7, 114, 0.781) );
				height: 599px;
				width: 85%;
				color: black;
				font-family: calibri;
				font-size: 15px;
				text-align: center;
				float: right;
			}
			
			.titulo {
				font-size: 20px;
			}
			
			#rodape {
				height: 40px;
				background: yellow;
				clear: both;
			}	
			
			#principal {
				width: 1440px;
				height: 100%;
				margin: 0px auto;
				
			}
			
			body {
				margin: 0px;
				background: url(img/fundo.jpg);
				background-size: cover;
				border: 0px;
			}
			
			#nomePagina {
				display: flex;
				justify-content: center;
				margin: 0px ;
				height: 118px;
			}

			a {color:inherit;}
			
			a.classe1:link, a:visited, a:hover, a:active{
				text-decoration: none;
			}
			
			#conteudo {
				overflow: auto;
			}
			
			#email{
				border:0;
				background: none;
				display: block;
				margin: 20px auto;
				text-align: center;
				border: 2px solid #049DD9;
				padding: 14px 10px;
				width: 200px;
				outline: none;
				color: white;
				border-radius: 24px;
				transition: 0.25s;
			}
			
			#email:focus{
				width: 280px;
				border-color: #FE640B;
			}
			
			.box{
				background: linear-gradient(rgba(57, 20, 175, 0.623),rgba(33, 7, 114, 0.781));
			}
			
			.botaoEsquerda{
				position: relative;
				top: 20px;
			}
			
			.btnEsquerda{
				border: 0px;
				font-family: Calibri;
				font-size: 20px;
				color: black;
				background: rgba(0, 0, 0, 0.0);
			}
			
			-webkit-animation-duration: 0.5s;
			-webkit-animation-timing-function: ease;
			-webkit-animation-fill-mode: both;
			
			animation-duration: 0.5s;
			animation-timing-function: ease;
			animation-fill-mode: both;
			
			-webkit-border-radius: 3px;
			border-radius: 3px;
			
			-webkit-box-shadow: 0px 1px 4px 0px rgba(168, 168, 168, 0.6) inset;
			box-shadow: 0px 1px 4px 0px rgba(168, 168, 168, 0.6) inset;
			
			-webkit-transition: all 0.2s linear;
			transition: all 0.2s linear;
		</style>
	</head>
	<body>
		<div id="principal">
			<div id="parteSuperior">
			</div>
			<div id="cabecalho">
			
			<a href="index.jsp">
			<img src="img\Logo.png" id="logo">
			</a>	
				<span id="nomePagina">
					<img src="img/NomePag.png" id="nomePagina">
				</span>	
				
			
				
				
			</div>
			
		    <div id="paginas_lateralEsquerda">
		    
		    	<span id="incluir" class="botaoEsquerda">
					<button id="incluir_" class="btnEsquerda">
						<a href="incluir.jsp"  class="classe1"> 
						Incluir
						</a>
					</button>
				</span>
				
				<br><br>
				
				<span id="atualizar" class="botaoEsquerda">
					<button id="atualizar_" class="btnEsquerda">
						<a href="atualizar.jsp"  class="classe1">
						Atualizar
						</a>
					</button>	
				</span>
				
				<br><br>
				
				<span id="consultar" class="botaoEsquerda">
					<button id="consultar_" class="btnEsquerda">
						<a href="consultar.jsp"  class="classe1">
						Consultar
						</a>
					</button>	
				</span>
				
				<br><br>
				
				<span id="excluir" class="botaoEsquerda">
					<button id="excluir_" class="btnEsquerda">
						<a href="excluir.jsp"  class="classe1"> 
						Excluir
						</a>
					</button>	
				</span>
				
				<br><br>
				
				  <span id="listar" class="botaoEsquerda">
					<button id="listar_" class="btnEsquerda">
						<a href="ServletBrinquedo?cmd=listar" class="classe1 id="teste">
						Listar
						</a>
					</button>	
				</span>
					
				<br><br>
				
				<span id="login" class="botaoEsquerda">
					<button id="login_" class="btnEsquerda">
						<a href="Login.jsp"  class="classe1"> 
						Login
						</a>
					</button>
				</span>
			</div>
			<jsp:useBean id="usuario" scope="session" class="br.edu.unicid.bean.Usuario" />
			<div id="conteudo" >
			<form id="formulario" class="box" action="ServletUsuario" method="get">
				<input type="hidden" name="cmd" value="cadastrar">
			<h1>Cadastro</h1>
				<input type="hidden" name="id" value="0">
           		 <input id="usename" type="text" name="nome" placeholder="Usuário" value="<%= usuario.getNomeUsuario() %>" required>
           		 <input id="email" type="text" name="email" placeholder="Email" required value="<%= usuario.getEmail() %>">
           		 <input id="senha1" type="text" placeholder="Digite sua senha" required value="<%= usuario.getSenha() %>"> 
           		 <input id="senha2" type="text" name="senha" placeholder="Confirme sua senha" required value="<%= usuario.getSenha() %>">
          		 <input id="cadastrar" type="submit" name="login" value="Cadastrar">
			</form>
				
			</div>
			
			<div id="rodape">
				<img src="img\LogoRodape.png" id="logo_rodape">
			</div>
		</div>
		<script type="text/javascript">
			window.onload = function(){
	
				   var form = document.getElementById("formulario");
				   var onsubmit = function(event){
				        event.preventDefault();
	
				       if(!validar()){
				           //chame as funções para valores não válidos
				       }else{
				          form.submit();
				       }
				   }
	
				   form.addEventListener("submit", onsubmit);
				}
	
				function validar() {
				   var campo1 = document.getElementById('senha1').value;
				   var campo2 = document.getElementById('senha2').value;
	
				   if (campo1 != campo2) {
				       alert('As senhas não são iguais!');
				       return false; //Parar a execucao
				   }
				   return true;
			}
		</script>
	</body>
</html>