function carregaGridCompanhias(){
	ListaCompanhiasJS.executa(montaGridCompanhias);
}



function cleanAddRows(local){
    dwr.util.removeAllRows(local);
}


function montaGridCompanhias(list){
	  cleanAddRows("GridCompanhias");
	
      var cellFuncs = [
                        function(list) { return list[0]; },
                        function(list) { return list[1]; }
                       ];

      dwr.util.addRows("GridCompanhias", list, cellFuncs);
}