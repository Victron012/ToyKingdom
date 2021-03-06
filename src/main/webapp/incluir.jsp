<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link  rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="style/estrutura.css">
		<title>Incluir Brinquedos</title>
		<style>
			#tabela{
				position: relative;
				right: 10px;
			}
			
			th{
				font-size: 30px;
				font-weight: normal;			
			}
			
			h3{
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
				color: black;
				border-radius: 24px;
				transition: 0.25s;
				font-size: 20px;
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
				<h1 id="TituloPag">Cadastro de Brinquedo</h1>
				<center>
					<table border="0" id="tabela">
						<form action="ServletBrinquedo" method="post">
							<input type="hidden" name="cmd" value="incluir"> <br/>
							<input type="hidden" name="id" value="0">
				
								<tr>
									<th>Nome:</th>
				 					<td><input type="text" name="Nome" maxlength="30" required class="campo"></td>
							
									<th>Marca:</th>
									<td><input type="text" name="Marca" size="15" maxlength="30" class="campo"></td>
								
									<th>Categoria:</th>
										<td><select type="text" name="Categoria" class="campo"> 
											<option value="null"></option>
											<option value="acao">A??o</option>
									  		<option value="aventura">Aventura</option>
									  		<option value="carros">Carros</option>
									  		<option value="bonecas">Bonecas</option>
									  		<option value="pelucia">Bichos de Pel?cia</option>
									  		<option value="educativos">Brinquedos Educativos</option>
									  		<option value="tabuleiro">Jogos de Tabuleiro</option>
									  		<option value="games">Games</option> 
									 	</select>
									 </td>
								</tr>
							
							<tr><td></td></tr>
							<tr><td></td></tr>
							
							<tr>
								<th>Faixa Et?ria:</th>
								<td><input type="text" name="FaixaEtaria" size="15" maxlength="30" class="campo"></td>
								
								<th>Imagem:</th>
								<td colspan="4" rowspan="7"><label class="campoImg"><span id="insira">Inserir imagem</span><input type="file" name="Img" size="30" maxlength="30" class="campoImg"></label></td>
							</tr>
								
							</tr>
							
							<tr><td></td></tr>
							<tr><td></td></tr>
							
							<tr>
								<th>Pre?o:</th>
								<td><input type="text" name="Preco"  size="12" maxlength="30" required class="campo"></td>
							</tr>
							
							<tr><td></td></tr>
							<tr><td></td></tr>
							
							<tr>
								<th>Parcelas:</th>
								<td><select type="text" name="Parcelas" class="campo"> 
										<option value="null"></option>
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
								<th>Descri??o:</th>
								<td colspan="6"><input type="text" name="Descricao" maxsize="30" maxlength="100" class="campo"></td>
							</tr>
			
							
							<tr>
								<td colspan="6" align="center"><input type="submit" value="Cadastrar" class="botao"></td>
							</tr>
						</form>
					</table>
				</center>
			</div>
			
			<div id="rodape">
				<img src="img\ProjetoJava.png" id="logo_rodape">
				<span id="faleConosco">

			</div>
		</div>
	</body>
</html>