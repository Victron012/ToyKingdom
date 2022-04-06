<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>

<html>
	<head>
		<title>Consultar Brinquedos</title>
		<link  rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="style/estrutura.css">
		<style>
			#tabela{
				padding-top: 15px;
				padding-left: 10px;
				font-size: 21px;
				color: white;	
				float: left;		
				}
			
			th{
				font-size: 25px;	
				float: left;
				font-weight: normal;			
			}
			
			#label_{
				float: right;
				box-shadow: 5px 5px 5px #434246;
				border-radius: 30px;
				position: relative;
				top: 10px;
				right: 60px;
				width: 350px;
				height: 480px;
				background-color: #6D1782;
				background: linear-gradient(rgba(57, 20, 175, 0.623),rgba(33, 7, 114, 0.790));
				color: white;
			}
			
			#foto-{
				float: left;
				border-radius: 10px;
				position: relative;
				top: 10px;
				left: 40px;
				width: 850px;
				height: 480px;
				align: center;
			}
			
			#nome-{
				font-size: 30px;
			}
			
			#descricao-{
				color: grey;
			}
			
			#preco-{
				font-size: 25px;
			}
			
			
			#parcelas-{
				padding-left: 5px;
				font-size: 20px;
			}
			
			#voltar-{
				position: absolute;
				top: 650px;
				right: 530px;
			}
			
		</style>
	</head>
	<body>
		<div id="principal">
			<div id="cabecalho">	
				<a href="index.jsp">
					<img src="img\ProjetoJava.png" id="logo">
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
				<jsp:useBean id="brinquedo" scope="session" class="br.edu.unicid.bean.Brinquedo" />
				<center>
					<form action="ServletBrinquedo" method="get">
						<input type="hidden" name="cmd" value="incluir"> <br/>
						<input type="hidden" name="id" value="0">	
						<img src="img/<%= brinquedo.getImg()%>" id="foto-"><!-- Foto -->
						<div id="label_">
							<p id="nome-"><%= brinquedo.getNomeBrinquedo()%></p><!-- Nome -->
							<table border="0" id="tabela">
								<tr id="financeiro">
									<td><p id="preco-">R$<%= brinquedo.getPrecoBrinquedo()%></p></td>								
								</tr>
								<tr>
									<td><p id="parcelas-">em <%= brinquedo.getParcelas() %>x de R$<%= brinquedo.getParcelado() %> S/juros</p></td>
								</tr>
								<tr><td></td></tr>
								<tr><td></td></tr>
								<tr>
									<td><p id="marca-">Marca: <%= brinquedo.getMarcaBrinquedo() %></p></td>
								</tr>
								<tr><td></td></tr>
								<tr><td></td></tr>
								<tr>
									<td><p id="faixaEtaria-">Faixa Etária: <%= brinquedo.getFaixaEtaria() %></p></td>
								</tr>
								<tr><td></td></tr>
								<tr><td></td></tr>
								<tr>
									<td><p id="categoria-">Categoria: <%= brinquedo.getCategoriaBrinquedo() %></p></td>
								</tr>
								<tr><td></td></tr>
								<tr><td></td></tr>
								<tr id="centro">
									<td rowspan= 4><p id="descricao-"><%= brinquedo.getDescricao() %></span></p></td><!-- descricao -->
								</tr>
							</table>
						</div>
						<span id="voltar-"><a align="center" onClick="history.go(-1)" class="botao">Voltar</a></span>		
					</form>
				</center>
			</div>
			
			<div id="rodape">
				<img src="img\ProjetoJava.png" id="logo_rodape">
				<span id="faleConosco">

			<span id="login">
					<button id="login_" class="btnEsquerda">
						<a href="Login.jsp"  class="classe1"> 
						Login
						</a>
					</button>
				</span>
			</div>
		</div>
	</body>
</html>