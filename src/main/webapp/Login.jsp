<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
		<link  rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="style/estrutura.css">
		<style>
			.vermelho{
				color: red;
			}
			
			#cadastro, #ok{
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
			
			#cadastro:hover, #ok:hover{
				border-color: #FE640B;	
			}
			
			.box{
				background: linear-gradient(rgba(57, 20, 175, 0.623),rgba(33, 7, 114, 0.781));
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
			<div id="cabecalho">		
				<a href="index.jsp">
					<img src="img\Logo.png" id="logo">
				</a>	
				<span id="nomePagina">
					<img src="img/NomePag.png" id="nomePagina">
				</span>							
			</div>
			
		    <div id="barrinha">
		    
		    	<span id="listar" class="botaoEsquerda">
					<button id="listar_" class="btnEsquerda">
						<a 	href="ServletBrinquedo?cmd=listar" class="classe1 id="teste">
						Brinquedos
						</a>
					</button>	
				</span>
				
				<br><br>		
				
				<span id="educativos" class="botaoEsquerda">
					<button id="educativos_" class="btnEsquerda">
						<a href="ServletBrinquedo?cmd=cat&categoria=educativos" class="classe1 id="teste">
						Brinquedos Educativos
						</a>
					</button>	
				</span>
				
				<br><br>
				
				<span id="pelucia" class="botaoEsquerda">
					<button id="pelucia_" class="btnEsquerda">
						<a href="ServletBrinquedo?cmd=cat&categoria=pelucia" class="classe1 id="teste">
						Bichos de Pelúcia
						</a>
					</button>	
				</span>
				
				<br><br>
				
				<span id="bonecas" class="botaoEsquerda">
					<button id="bonecas_" class="btnEsquerda">
						<a href="ServletBrinquedo?cmd=cat&categoria=bonecas" class="classe1 id="teste">
						Bonecas
						</a>
					</button>	
				</span>
				
				<br><br>
				
				<span id="aventura" class="botaoEsquerda">
					<button id="aventura_" class="btnEsquerda">
						<a href="ServletBrinquedo?cmd=cat&categoria=aventura" class="classe1 id="teste">
						Aventura
						</a>
					</button>		
				</span>
				
				<br><br>
				
				<span id="acao" class="botaoEsquerda">
					<button id="acao_" class="btnEsquerda">
						<a href="ServletBrinquedo?cmd=cat&categoria=acao" class="classe1 id="teste">
						Ação
						</a>
					</button>	
				</span>
				
				<br><br>
				
				<span id="carros" class="botaoEsquerda">
					<button id="carros_" class="btnEsquerda">
						<a href="ServletBrinquedo?cmd=cat&categoria=carros" class="classe1 id="teste">
						Carros
						</a>
					</button>	
				</span>
				
				<br><br>
				
				<span id="jogos" class="botaoEsquerda">
					<button id="jogos_" class="btnEsquerda">
						<a href="ServletBrinquedo?cmd=cat&categoria=tabuleiro" class="classe1 id="teste">
						Jogos de Tabuleiro
						</a>
					</button>	
				</span>
				
				<br><br>
				
				<span id="games" class="botaoEsquerda">
					<button id="games_" class="btnEsquerda">
						<a href="ServletBrinquedo?cmd=cat&categoria=games" class="classe1 id="teste">
						Games
						</a>
					</button>	
				</span>
			</div>
			
			<div id="conteudo" >
				<div class="box">
					<div id="divLogin">
						<form id="incluir_" action="ServletUsuario" method="post">
							<input type="hidden" name="cmd" value="login">
							<h1>Login</h1>
							 <input type="hidden" value="0">
			           		 <input id="usename" type="text" name="email" placeholder="Email" required>
			           		 <input id="password" type="password" name="senha" placeholder="Senha" required>
			          		 <input id="" type="submit" name="login" value="Entrar">
			          		 <a href="cadastro.jsp" class="classe1"><input id="cadastro" type="button" value="Cadastrar"></a>
						</form>
					</div>
					<div id="usuarioIncorreto">
						<h2 class="vermelho">Usuário ou senha incorretos!</h2>
						<input id="ok" type="button" name="ok" value="Ok">
					</div>
				</div>
			</div>
			
			<div id="rodape">
				<img src="img\LogoRodape.png" id="logo_rodape">
			</div>
		</div>
		<script type="text/javascript" src="jquery.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$("div#usuarioIncorreto").hide();
				
				//Array de parametros 'chave=valor'
				var params = window.location.search.substring(1).split('&');

				//Criar objeto que vai conter os parametros
				var paramArray = {};

				//Passar por todos os parametros
				for(var i=0; i<params.length; i++) {
				    //Dividir os parametros chave e valor
				    var param = params[i].split('=');

				    //Adicionar ao objeto criado antes
				    var usuarioIncorreto = paramArray[param[0]] = param[1];
				    
				    if(usuarioIncorreto==null){
				    	$("div#divLogin").hide();
				    	$("div#usuarioIncorreto").show();	
				    }
				   
				    //confirmar usuario/senha incorreto
				    $("input#ok").click(function(){
				    	$("div#usuarioIncorreto").hide();
				    	$("div#divLogin").show();
	         		})			    
				}
			})
			
		</script>	
	</body>
</html>