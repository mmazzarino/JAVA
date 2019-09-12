function carregaGridPartidas(){
	ListaPartidasJS.executa(montaGridPartidas);
}

 


function cleanAddRows(local){
    dwr.util.removeAllRows(local);
}




function montaGridPartidas(list){
	  cleanAddRows("GridPartidas");
	
      var cellFuncs = [
                        function(list) { return list[0]; },
                        function(list) { return list[1]; },
                        function(list) { return list[2]; }
                       ];

      dwr.util.addRows("GridPartidas", list, cellFuncs);
}