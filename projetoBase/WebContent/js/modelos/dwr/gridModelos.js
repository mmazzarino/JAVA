function carregaGridModelos(){
	ListaModelosJS.executa(montaGridModelos);
}

 


function cleanAddRows(local){
    dwr.util.removeAllRows(local);
}




function montaGridModelos(list){
	  cleanAddRows("GridModelos");
	
      var cellFuncs = [
                        function(list) { return list[0]; },
                        function(list) { return list[1]; }
                       ];

      dwr.util.addRows("GridModelos", list, cellFuncs);
}