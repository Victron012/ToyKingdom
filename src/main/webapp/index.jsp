<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Toy Kingdon</title>
		<link  rel="stylesheet" href="/style.css">
		<style>
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
			
			#barrinha {
				display: flex;
				justify-content: center;
				justify: space-between;
				background: #FFFF3F;
				height: 20px;
				width: 100%;
				text-align: center;
				font-size: 20px;
			}
			
			#conteudo {
				background: linear-gradient(rgba(57, 20, 175, 0.623),rgba(33, 7, 114, 0.781) );		
				height: 607px;
				width: 100%;
				color: white;
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
				border: 0px;
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
			
			.tela_{
				background: pink;
				 width: 400px; 
				 height: 400px;
					
			}
			
			.btnEsquerda{
				border: 0px;
				font-family: Calibri;
				font-size: 20px;
				color: #BF3082;
				background: rgba(0, 0, 0, 0.0);
				padding-left: 10px;
				font-weight: bold;		
			}
			
			.botaoEsquerda {
				position: relative;
				top: -10px;	
			}
			
			#login{
				float: right;
				position: relative;
				top: 7px;
				right: 10px;
				border: 2px solid #049DD9;
				border-radius: 24px;
				transition: 0.25s;
				text-allign: center;
			}
			
			#login:hover{
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
		   	 
				 <span id="listar" class="botaoEsquerda">
					<button id="listar_" class="btnEsquerda">
						<a 	href="ServletBrinquedo?cmd=listar" class="classe1" id="teste">
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
				<!--  <div class="tela_">
				</div>-->
			</div>
			
			<div id="rodape">
				<img src="img\LogoRodape.png" id="logo_rodape">
				
				<span id="login">
					<button id="login_" class="btnEsquerda">
						<a href="Login.jsp?s=ok"  class="classe1"> 
						Login
						</a>
					</button>
				</span>
			</div>
		</div>
	</body>
</html>