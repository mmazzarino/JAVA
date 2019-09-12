<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Menu Resonsivo</title>
  <link rel="stylesheet" href="estilo.css">
</head>
<body>

<nav class="menu">
      <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Avioes</a>
              <ul>
                <li><a href="templates/avioes/formAddAviao.html">Adcionar Aviões</a></li>
				<li><a href="templates/avioes/alteraAviao.html">Alterar Avião</a></li>
				<li><a href="http://localhost:8080/projetoBase/aviao?Rules=ListaTodosAvioes">Listar Todos Aviões</a></li>
				<li><a href="templates/avioes/excluiAviao.html">Excluir Avião</a></li>
              </ul>
          </li>
          <li><a href="#">Modelos</a>
              <ul>
                <li><a href="templates/modelos/formAddModelo.html">Adcionar Modelo</a></li>
				<li><a href="templates/modelos/alteraModelo.html">Alterar Modelo</a></li>
				<li><a href="http://localhost:8080/projetoBase/modelo?Rules=ListaTodosModelos">Listar Todos Modelos</a></li>
				<li><a href="templates/modelos/excluirModelo.html">Excluir Modelo</a></li>		
              </ul>
          </li>
          <li><a href="#">Companhias</a>
              <ul>
                <li><a href="templates/companhiasAereas/formAddCompanhia.html">Adcionar Companhia Aerea</a></li>
				<li><a href="templates/companhiasAereas/alteraCompanhia.html">Alterar Companhia Aerea</a></li>
				<li><a href="http://localhost:8080/projetoBase/companhia?Rules=ListaTodasCompanhias">Listar Todas Companhias Aereas</a></li>
				<li><a href="templates/companhiasAereas/excluirCompanhia.html">Excluir Companhia Aerea</a></li>		
              </ul>
          </li>
          <li><a href="#">Partidas</a>
              <ul>
                <li><a href="templates/Partidas/formAddPartida.html">Adcionar Partida</a></li>
				<li><a href="templates/Partidas/alteraPartida.html">Alterar Partida</a></li>
				<li><a href="http://localhost:8080/projetoBase/partida?Rules=ListaTodasPartidas">Listar Todas Partidas</a></li>
				<li><a href="templates/Partidas/excluirPartida.html">Excluir Partida</a></li>		
              </ul>
          </li>
          <li><a href="#">Chegadas</a>
              <ul>
                <li><a href="templates/chegadas/formAddChegada.html">Adcionar Chegada</a></li>
				<li><a href="templates/chegadas/alteraChegada.html">Alterar Chegada</a></li>
				<li><a href="http://localhost:8080/projetoBase/chegada?Rules=ListaTodasChegadas">Listar Todas Chegadas</a></li>
				<li><a href="templates/chegadas/excluirChegada.html">Excluir Chegada</a></li>		
              </ul>
          </li>
      </ul>
  </nav>
</body>
</html>