<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="br.edu.unicid.bean.Brinquedo" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Toy Kingdon</title>
		<link  rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="style/estrutura.css">
		<style>
			#tabela{
				font-size: 20px;
				float: left;
				padding-left: 10px;
				width: 100%;
			}
			h2{
			color: black;
			font-size: 30px;
			}
			
			#label_{
				box-shadow: 5px 5px 5px #434246;
				border-radius: 30px;
				position: relative;
				top: 20px;
				width: 400px;
				height: 400px;
				background-color: #6D1782;
				background: linear-gradient(rgba(57, 20, 175, 0.623),rgba(33, 7, 114, 0.790));
				color: white;
			}
			
			#label_:hover{
				border-color: #FE640B;	
			}
			
			#foto-{
				border-radius: 30px;
				position: relative;
				top: 10px;
				width: 380px;
				height: 200px;
				align: center;
			}
			
			#nome-{
				font-size: 25px;
			}
			
			#parcelas-{
				float: right;
				padding-right: 10px;;
			}
			#descricao-{
				color: grey;
				font-size: 18px;
			}
			
			.submit{
				position: relative;
				top: -400px;
				width: 400px;
				height: 400px;
				background-color: rgba(0, 0, 0, 0);
			}
		
			#pagPrincipal{
				position: relative;
				top: -30px;
			}
			
			#whatsapp_{
				position: fixed;
				top: 150px;
				right: 30px;
			}
			
			#whatsapp{
				width: 50px;
				height: 50px;
			}
			
			#mensagem{
				width: 100px;
				height: 100px;
				background-color: pink;
			}
		</style>
	</head>
	<body>
		<div id="principal">
			<div id="cabecalho">	
				<a href="index.jsp">
					<img src="img/Logo.png" id="logo">
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
				<center>
					<h2>Lista de Brinquedos</h2>	
		          	<%
		                List <Brinquedo> lista = new ArrayList<Brinquedo>();
		                lista = (ArrayList) request.getAttribute("brinquedoList");
		                for(Brinquedo a: lista ){%>
					<div id="label_">	
						<a href="ServletBrinquedo?cmd=pag&id=<%=a.getIdBrinquedo()%>" class="classe1">
							<img src="img/<%=a.getImg()%>" id="foto-"><!-- Foto -->
							<p id="nome-"><%=a.getNomeBrinquedo()%></p><!-- Nome -->
							
							<table border="0" id="tabela">
								<tr id="financeiro">
									<td>R$<%=a.getPrecoBrinquedo()%></td>								
									<td><span id="parcelas-"><%=a.getParcelas() %>x de R$<%=a.getParcelado()%> S/juros</span></td>
								</tr>
								<tr><td></td></tr>
								<tr><td></td></tr>
								<tr>
									<td colspan="2"><span id="descricao-"><%=a.getDescricao() %></span></td>
								</tr>	
							</table>
						</a>
					</div>
						
					<br><br><br><br><br>
					
		            	<%
		                	}
		          		%>
		 
		
				<a id="pagPrincipal" href="index.jsp" align="center" class="botao">Página Principal</a>
				<br>
				</center>
			</div>
			
			<div id="rodape">
				<img src="img/LogoRodape.png" id="logo_rodape">
				
				<span id="login">
					<button id="login_" class="btnEsquerda">
						<a href="Login.jsp"  class="classe1"> 
						Login
						</a>
					</button>
				</span>
			</div>
		</div>
		<script type="text/javascript" src="jquery.js"></script>
		<script type="text/javascript">
			
			$(document).ready(function(){
				$("div#mensagem").hide();
				
				$("img#whatsapp").click(function(){
					if($("div#mensagem").is(":visible")){
						$("div#mensagem").hide();	
					} else{
						$("div#mensagem").show();
					}
         		});
			});
		</script>		
	</body>
</html>