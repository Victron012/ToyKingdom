<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Consultar Produtos</title>
		<!--<link rel="stylesheet" type="text/css" href="css/home_page.css">-->
		<style>
			div {
				border: 1px solid black;
			}
		
			#parteSuperior {
				background-color: black;
				height: 10px;
			}
			
			#cabecalho {
				height: 120px;
				background: yellow;
			}
			
			#paginas_lateralEsquerda {
				background-color: #808080;
				height: 540px;
				width: 180px;
				text-align: right;
				float: left;
			}
			
			#conteudo {
				background-color: #1E90FF;
				height:540px;
				width: 840px;
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
				width: 1024px;
				margin: 0px auto;
			}
			
			body {
				margin: 0px;
				background: url(img/fundo.jpg);
				background-size: cover;
			}
			
			#nomePagina {
				text-align:center;
				margin: 0px ;
				font-family: verdana;
				font-size: 25px;
				color: purple;
			}
			
			#logo {
				position: absolute; 
				top: 16px;
				width: 180px;
				height: 118px;
			}
			
			#logo_rodape {
				position: relative;
				top: -1px;
				width: 81px;
				height: 45px;
			}
			#logo_fale {
				height: 21px;
				width: 21px;
			}
			
			#faleConosco_ {
				border: 0px;
				position: relative;
				left: 0px;
				font-family: Harlow Solid;
				font-size: 20px;
				color: black;
				background: rgba(0, 0, 0, 0.0);
			}
			
			#dicas_ {
				border: 0px;
				position: relative;
				left: 0px;
				font-family: Harlow Solid;
				font-size: 20px;
				color: black;
				background: rgba(0, 0, 0, 0.0);
			}
			
			#logo_dicas {
				height: 21px;
				width: 21px;
			}
			
			#cruzeiros_ {
				border: 0px;
				position: relative;
				left: 0px;
				font-family: Harlow Solid;
				font-size : 20px;
				color: black;
				background: rgba(0, 0, 0, 0.0);
			}
			
			#logo_cruzeiros {
				height: 21px;
				width: 21px;
			}
			
			#pacotes_ {
				border: 0px;
				position: relative;
				left: 0px;
				widht: 158px;
				font-family: Harlow Solid;
				font-size: 20px;
				color: black;
				background: rgba(0, 0, 0, 0.0);
			}
			
			#logo_pacotes {
				height: 21px;
				width: 21px;
			}
			
			#hospedagem_ {
				border: 0px;
				position: relative;
				left: 0px;
				font-family: Harlow Solid;
				font-size: 20px;
				color: black;
				background: rgba(0, 0, 0, 0.0);
			}
			
			#logo_hospedagem {
				height: 21px;
				width: 21px;
			}
			
			#voos_ {
				border: 0px;
				position: relative;
				left: -2px;
				font-family: Harlow Solid;
				font-size: 20px;
				color: black;
				background: rgba(0, 0, 0, 0.0);
			}
		
			#logo_voos {
				height: 21px;
				width: 21px;
			}
			
			#faleConosco_rodape {
				border: 0px;
				position: relative;
				left: -4px;
				top: 5px;
				float: right;
				font-family: Harlow Solid;
				font-size: 20px;
				color: white;
				background: rgba(0, 0, 0, 0.0);
			}
			
			#instagram_rodape {
				clear: both;
				position: relative;
				top: -19px;
				left: 765px;
				border: 0px;
				background: rgba(0, 0, 0, 0.0);
			}
			
			#logo_insta {
				height: 39px;
			}
			
			#whatsapp_rodape {
				position: relative;
				top: -19px;
				left: 654px;
				border: 0px;
				background: rgba(0, 0, 0, 0.0);
			}
			
			#logo_whats {
				height: 39px;
			}
			
			#cruzeiro_conteudo {
				background: black;
				width: 280px;
				height: 242px;
				position: relative;
				top: 60px;
				left: 70px;
			}
			
			#hospedagem_conteudo {
				background: black;
				width: 280px;
				height: 242px;
				position: relative;
				top: -184px;
				left: 480px;
			}
			
			a {color:inherit;}
			
			a.classe1:link, a:visited, a:hover, a:active{
				text-decoration: none;
			}
			
			#conteudo {
				overflow: auto;
			}
			
			#hospedagem2_conteudo {
				background: black;
				width: 280px;
				height: 242px;
				position: relative;
				top: -324px;
				left: 480px;
			}
			
			#cruzeiro2_conteudo {
				background: black;
				width: 280px;
				height: 242px;
				position: relative;
				top: -80px;
				left: 70px;
			}
			
			h2{
				align: center;
				color: Black;
			}
			
			th{
				font-size: 25px;	
				float: left;
				font-weight: normal;
				color: black;			
			}
			
			#tabela{
				position: relative;
				top: 150px;
				right: 15px;
			}
		</style>
	</head>
	<body>
		<div id="principal">
			<div id="parteSuperior">
			</div>
			<div id="cabecalho">
			
			<a href="index.jsp">
			<img src="img/Logo.png" id="logo">
			</a>	
				<span id="nomePagina">
					<h1>Toy Kingdon</h1>
				</span>	
				
			
				
				
			</div>
			
		    <div id="paginas_lateralEsquerda">
				<span id="faleConosco">
					<button id="faleConosco_">
						<a href="incluir.jsp"  class="classe1"> 
						Incluir
						</a>
					</button>
				</span>
				
				<br><br>
				
				<span id="dicas">
					<button id="dicas_">
						<a href="atualizar.jsp"  class="classe1">
						Atualizar
						</a>
					</button>	
				</span>
				
				<br><br>
				
				<span id="cruzeiros">
					<button id="cruzeiros_">
						<a href="consultar.jsp"  class="classe1">
						Consultar
						</a>
					</button>	
				</span>
				
				<br><br>
				
				<span id="pacotes">
					<button id="pacotes_">
						<a href="excluir.jsp"  class="classe1"> 
						Excluir
						</a>
					</button>	
				</span>
				
				<br><br>
				
				  <span id="hospedagem">
					<button id="hospedagem_">
						<a href="ServletBrinquedo?cmd=listar" class="classe1 id="teste">
						Listar
						</a>
					</button>	
				</span>
					
			</div>
			
			<div id="conteudo" >
				 <center>
				 	<h1>Consultar Brinquedos</h1>
        <table id="tabela">
            <form action="ServletBrinquedo?cmd=con" method="post">
            <tbody>
                <tr>
                    <th>Nome do Brinquedo:</th>
                    <td>
                        <input type="text" name="id" size="20" maxlenght="10" required/>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Enviar"></td>
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