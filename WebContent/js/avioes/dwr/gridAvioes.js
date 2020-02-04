function carregaGridAvioes(){
	ListaAvioesJS.executa(montaGridAvioes);
}


function cleanAddRows(local){
    dwr.util.removeAllRows(local);
}


function montaGridAvioes(list){
	  cleanAddRows("GridAvioes");
	
      var cellFuncs = [
                        function(list) { return list[0]; },
                        function(list) { return list[1]; },
                        function(list) { return list[2]; },
                        function(list) { return list[3]; },                      
                        function(list) { return list[4]; },
                        function(list) { return list[5]; }
                       ];

      dwr.util.addRows("GridAvioes", list, cellFuncs);
}