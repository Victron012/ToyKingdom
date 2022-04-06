<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Excluir Brinquedo</title>
		<link  rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="style/estrutura.css">
		<style>
			h2{
				align: center;
				color: Black;
			}
			
			th{
				font-size: 25px;	
				font-weight: normal;
				color: black;			
			}
			
			#tabela{
				position: relative;
				top: 150px;
				right: 15px;
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
			
			.campo:focus{
				border-color: #FE640B;				
			}
		</style>
	</head>
	<body>
		<div id="principal">
			<div id="cabecalho">		
				<a href="indexOperador.jsp">
					<img src="img/Logo.png" id="logo">
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
				    <center>
				    <h1>Excluir Brinquedos</h1>
			        <table id="tabela" border="0">
			            <form action="ServletBrinquedo?cmd=exc" method="post">
			            <tbody>
			                <tr>
			                    <th>Nome do Brinquedo:</th>
			                    <td>
			                        <input type="text" name="id" size="20" maxlenght="10" class="campo">
			                    </td>
			                </tr>
			
			                <tr>
			                    <td colspan="4" align="center"><input type="submit" value="Excluir" class="botao"></td>
			                </tr>
			
			            </tbody>
			           </form>
			        </table>
    			</center>
			</div>
			
			<div id="rodape">
				<img src="img/LogoRodape.png" id="logo_rodape">
			</div>
		</div>
	</body>
</html>