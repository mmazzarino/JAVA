function carregaGridChegadas(){
	ListaChegadasJS.executa(montaGridChegadas);
}



function cleanAddRows(local){
    dwr.util.removeAllRows(local);
}


function montaGridChegadas(list){
	  cleanAddRows("GridChegadas");
	
      var cellFuncs = [
                        function(list) { return list[0]; },
                        function(list) { return list[1]; },
                        function(list) { return list[2]; }
                       ];

      dwr.util.addRows("GridChegadas", list, cellFuncs);
}