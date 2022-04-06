<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Cadastro</title>
		<link rel="stylesheet" href="style/style.css">
		<link rel="stylesheet" href="style/estrutura.css">
		<style>			
			.box{
				background: linear-gradient(rgba(57, 20, 175, 0.623),rgba(33, 7, 114, 0.781));
			}
			
			#cadastrarButton{
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
			
			#senha_{
				border: 0px;
			}
			
			#cadastro_{
				border: 0px;
			}
			
			#confirmar, #cadastrarButton{
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
			
			#confirmar:hover, #cadastrarButton:hover{
				border-color: #FE640B;	
			}
			
			.x{
				width: 20px;
				height: 20px;
			}
			
			table{
				margin-left: 30px;
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
			<form id="formulario" class="box" action="ServletUsuario" method="post">
				<input type="hidden" name="cmd" value="cadastrar">
			<h1>Cadastro</h1>
				<div id="senha_">
					<input id="senhaOperador" type="password" placeholder="Senha de operador" required>
					<input id="confirmar" type="button" name="login" value="Confirmar">	
				</div>
				 	
				 <div id="cadastro_">
				 <table border="0" align="center">
					 <input type="hidden" name="id" value="0">
					 <tr>
						 <td>
		           		 	<input id="userName" type="text" name="nome" placeholder="Usuário" required>
		           		 </td>	
		           		 <td>
		           		 	<img class="x" id="userNameX" src="https://icones.pro/wp-content/uploads/2021/08/icone-x-avec-cercle-rouge.png">
		           		 	<img class="x" id="userNameV" src="https://cdn.pixabay.com/photo/2012/04/24/13/49/tick-40143_960_720.png">
		           		 </td>
					</tr>
					<tr>					
						<td>
	           		 		<input id="email" type="email" name="email" placeholder="Email" required>
	           		 	</td>
	           		 	<td>
	           		 		<img class="x" id="emailX" src="https://icones.pro/wp-content/uploads/2021/08/icone-x-avec-cercle-rouge.png">
	           		 		<img class="x" id="emailV" src="https://cdn.pixabay.com/photo/2012/04/24/13/49/tick-40143_960_720.png">
	           		 	</td>
					</tr>
					<tr>					
						<td>
	           		 		<input id="senha1" type="password" placeholder="Digite sua senha" required >
	           		 	</td>	
	           		 	<td>	
	           		 		<img class="x" id="senha1X" src="https://icones.pro/wp-content/uploads/2021/08/icone-x-avec-cercle-rouge.png">
	           		 		<img class="x" id="senha1V" src="https://cdn.pixabay.com/photo/2012/04/24/13/49/tick-40143_960_720.png">
						</td>
					</tr>
					<tr>			
						<td>	
	           				<input id="senha2" type="password" name="senha" placeholder="Confirme sua senha" required>
	           			</td>    
	           			<td>    
	           			    <img class="x" id="senha2X" src="https://icones.pro/wp-content/uploads/2021/08/icone-x-avec-cercle-rouge.png">
	           			 	<img class="x" id="senha2V" src="https://cdn.pixabay.com/photo/2012/04/24/13/49/tick-40143_960_720.png">
						</td>
					<tr>
						<td collspan=2>	
			          		 <input id="cadastrarButton" type="submit" name="login" value="Cadastrar">
			          		 <input id="cadastrar" type="submit" name="login" value="Cadastrar">
			          	</td>
			       </tr>   		
				</table>
				</div>
			</form>
				
			</div>
			
			<div id="rodape">
				<img src="img\LogoRodape.png" id="logo_rodape">
			</div>
		</div>
		<script type="text/javascript" src="jquery.js"></script>
		<script type="text/javascript">
			
			$(document).ready(function(){
				$("div#senha_").hide();
				$("input#cadastrar").hide();
				$("img.x").hide();
				
				$("input#cadastrarButton").click(function(){
					var campo1 = document.getElementById('senha1').value;
					var campo2 = document.getElementById('senha2').value;
					var campo3 = document.getElementById('userName').value;
					var campo4 = document.getElementById('email').value;
					
					if (campo1 == "" || campo2 == "" || campo3 == "" || campo4 == "") {
					       alert('Preencha os campos!');
					       return false; //Parar a execucao
					   } else {
		                   $("div#senha_").show();
		                   $("div#cadastro_").hide();
					   }
         		});
				
				$("input#confirmar").click(function(){
					var campo1 = document.getElementById('senhaOperador').value;
					var campo2 = 123;
					
					if (campo1 != campo2) {
					       alert('Senha incorreta!');
					       return false; //Parar a execucao
					   } else {
		                   $("div#senha_").hide();
		                   $("div#cadastro_").show();
		                   $("input#cadastrarButton").hide();
		                   $("input#cadastrar").show();
		                   
					   }
         		});
				
				// logo campo usuário
				$("input#userName").focus(function(){
					var campo1 = document.getElementById('userName').value;
					
					if (campo1 == "") {
							$("img#userNameV").hide();
							$("img#userNameX").show();
					       return false; //Parar a execucao
					   } else {
						    $("img#userNameX").hide()
							$("img#userNameV").show();
					   }
         		});
				$("input#userName").blur(function(){
					var campo1 = document.getElementById('userName').value;
					
					if (campo1 == "") {
							$("img#userNameV").hide();
							$("img#userNameX").show();
					       return false; //Parar a execucao
					   } else {
						    $("img#userNameX").hide()
							$("img#userNameV").show();
					   }
         		});
				
				//logo campo email
				$("input#email").focus(function(){
					var campo1 = document.getElementById('email').value;
					
					if (campo1 == "") {
							$("img#emailV").hide();
							$("img#emailX").show();
					       return false; //Parar a execucao
					   } else {
						    $("img#emailX").hide()
							$("img#emailV").show();
					   }
         		});
				$("input#email").blur(function(){
					var campo1 = document.getElementById('email').value;
					
					if (campo1 == "") {
							$("img#emailV").hide();
							$("img#emailX").show();
					       return false; //Parar a execucao
					   } else {
						    $("img#emailX").hide()
							$("img#emailV").show();
					   }
         		});
				
				//logo campo senha1
				$("input#senha1").focus(function(){
					var campo1 = document.getElementById('senha1').value;
					
					if (campo1 == "") {
							$("img#senha1V").hide();
							$("img#senha1X").show();
					       return false; //Parar a execucao
					   } else {
						    $("img#senha1X").hide()
							$("img#senha1V").show();
					   }
         		});
				$("input#senha1").blur(function(){
					var campo1 = document.getElementById('senha1').value;
					
					if (campo1 == "") {
							$("img#senha1V").hide();
							$("img#senha1X").show();
					       return false; //Parar a execucao
					   } else {
						    $("img#senha1X").hide()
							$("img#senha1V").show();
					   }
         		});
				
				//logo campo senha2
				$("input#senha2").focus(function(){
					var campo1 = document.getElementById('senha1').value;
					var campo2 = document.getElementById('senha2').value;
					
					if (campo2 == "" || campo1 != campo2) {
							$("img#senha2V").hide();
							$("img#senha2X").show();
					       return false; //Parar a execucao
					   } else {
						    $("img#senha2X").hide()
							$("img#senha2V").show();
					   }
         		});
				$("input#senha2").blur(function(){
					var campo1 = document.getElementById('senha1').value;
					var campo2 = document.getElementById('senha2').value;
					
					if (campo1 != campo2 || campo2 == "") {
							$("img#senha2V").hide();
							$("img#senha2X").show();
					       return false; //Parar a execucao
					   } else {
						    $("img#senha2X").hide()
							$("img#senha2V").show();
					   }
         		});
		});	
		
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
				   var campo3 = document.getElementById('senhaOperador').value;
				   var campo4 = 123;
	
				   if (campo1 != campo2) {
				       alert('As senhas não são iguais!');
				       return false; //Parar a execucao
				   } else if (campo3 != campo4) {
				       alert('Senha de Operador incorreta!');
				       return false; //Parar a execucao
				   }
				   return true;
				   
				}  
				
				
		</script>
	</body>
</html>