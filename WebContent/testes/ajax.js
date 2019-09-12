
   function getInformacaoQualquer() {
     createRequest();
     var url = "getInformacaoQualquerDoServidor-ajax.php";
     request.open("GET", url, true);
     request.onreadystatechange = atualizaPagina;
     request.send(null);
  }
