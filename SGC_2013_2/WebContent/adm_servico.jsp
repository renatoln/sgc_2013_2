<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login SGC</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900"
	rel="stylesheet" />
<link href="style/default.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="style/fonts.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel='stylesheet' type='text/css' href='style/style.css' />
<link rel='stylesheet' type='text/css' href='style/normalize.css' />
<script type='text/javascript' src='js/jquery.js'></script>
<script type='text/javascript' src='js/ajax.js'></script>
<script type='text/javascript' src='js/script.js'></script>
<!--[if IE 6]>
	<link href="default_ie6.css" rel="stylesheet" type="text/css" />
	<![endif]-->
</head>
<body>


	<div id="wrapper">


		<%@ page import="model.business.*, model.db.*, java.util.ArrayList;"%>

		<form method="post" action='SGCServlet'>
			<input type="hidden" name="cmd" value="LogoffCmd" />
			<button>Sair</button>
		</form>

<div id='ajax'>Ajax</div>



		<div id="header-wrapper">
			<div id="header" class="container">
				<div id="logo">
					<h1>
						<a href="#">Sistema de Condomínio</a>
					</h1>
					<p>Atividade de java web</p>
				</div>
			</div>
			<div id="menu" class="container">
			  <a style='text-align:left; line-height:0px'  href='administrador.jsp' >	<img  class='menu' src='images/menu.png'></img></a>
			</div>
		</div>

    
       <!-- PAGINA -->

		<div id="page" class="container">

 
			<!-- SERVICO -->
			
			<div id='content_serv' class="content">

				<div class="secao">
					<div class="title">
						<h1 style='font-size: 30px'>Gerenciamento de Tipo de Serviço</h1>
					</div>
					<div class="div-bt-abas">
						<div id="bt-aba-add" class="bt-aba">
							<div class="text">Adicionar Tipo</div>
						</div>
						<div id="bt-aba-alt" class="bt-aba">
							<div class="text">Alterar Tipo</div>
						</div>
						<div id="bt-aba-exc" class="bt-aba">
							<div class="text">Excluir Tipo</div>
						</div>
					</div>


					<div class="aba aba-add-tipo">
						<div class="aba-bg">

							<div class='aba-conteiner'>

								<form id="form_add" name="form_add" method="post" action='SGCServlet'>
									<span class='aba-title'>Nome Tipo</span>
									<input class='inp' name='nome' id="inp-nome-tipo" type='text' />
									<input type="hidden" name="cmd" value="AddServicoCmd" />
									<button id="bt_add_tipo">Adicionar</button>
								</form>

							</div>

						</div>
					</div>


					<div class="aba aba-alt-tipo">
						<div class="aba-bg">
							<div class='aba-conteiner'>

								<span class='aba-title'>Lista de Tipos</span>
								
								<div id='sobre-lista-desp-alt' class="lista-tipos"
									style='width: 485px; height: 25px; overflow: hidden; margin-bottom: 0px;'>
									<div class="atipos">
										<div class="id">ID</div>
										<div class="nome">NOME</div>
									</div>
								</div>
								
								
								
								<div id='lista-alt-servico' class="lista-tipos" style='width:500px'>

									<%
										
									ArrayList<Servico> listaServico = (ArrayList<Servico>)request.getAttribute("listaServico");
									for (Servico s : listaServico) {
									%>

									<div class="tipos tipos-serv">
										<div class="id"><%=s.getId()%></div>
										<div class="nome"><%=s.getNome()%></div>
										
									</div>

									<%
										}
									%>


								</div>

								<form id="form_alt" name="form_alt" method="post" action='SGCServlet'>
									<span class='aba-title'>Novo Nome </span> 
									<input class="inp"  id="inp-alt" type="text" name="nome" value="" >
									
									<input id='inp_alt_servico' type="hidden" name="idservico" value="0" />
									<input type="hidden" name="cmd" value="AlterServicoCmd" />
								</form>
								
								<button id="bt-alt-tipo">Alterar</button>

							</div>
						</div>
					</div>



					<div class="aba aba-exc-tipo">
						<div class="aba-bg">
							<div class='aba-conteiner'>

								<span class='aba-title'>Lista de Tipos</span>
							    
							    <div id='sobre-lista-desp-alt' class="lista-tipos"
									style='width: 485px; height: 25px; overflow: hidden; margin-bottom: 0px;'>
									<div class="atipos">
										<div class="id">ID</div>
										<div class="nome">NOME</div>
									</div>
								</div>
								
								
								
								<div class="lista-tipos" style='width:500px'>

									<%
										
									
									for (Servico s : listaServico) {
									%>

									<div class="tipos tipos-serv">
										<div class="id"><%=s.getId()%></div>
										<div class="nome"><%=s.getNome()%></div>
										
										
									</div>

									<%
										}
									%>


								</div>
								
								<form id="form_exc_servico" name="form_exc" method="post" action='SGCServlet'>						
									<input id='inp_exc_servico' type="hidden" name="idservico" value="0" />
									<input type="hidden" name="cmd" value="DeleteServicoCmd" />
								</form>
								<button id="bt-exc-tipo">Excluir</button>

							</div>
						</div>
					</div>

				</div>
			</div>
			
			
		
			
			
		</div>





		<div id="portfolio-wrapper">
			<div id="portfolio" class="container"></div>
		</div>
	</div>
	<div id="footer">
		<p>
			Copyright (c) 2013 Sitename.com. All rights reserved. Design by <a
				href="http://www.freecsstemplates.org/" rel="nofollow">FreeCSSTemplates.org</a>.
			Photos by <a href="http://fotogrph.com/">Fotogrph</a>.
		</p>
	</div>
</body>
</html>
