package components.chegadas;


public class Chegadas {
	int CodChegada;
	String DataChegada;
	int CodAviao;
	
	public Chegadas() {
		
	}
	
	public Chegadas(int codChegada, String dataChegada, int codAviao) {
		CodChegada = codChegada;
		DataChegada = dataChegada;
		CodAviao = codAviao;
	}
	
	public int getCodChegada() {
		return CodChegada;
	}
	public void setCodChegada(int codChegada) {
		CodChegada = codChegada;
	}
	public String getDataChegada() {
		return DataChegada;
	}
	public void setDataChegada(String dataChegada) {
		DataChegada = dataChegada;
	}
	public int getCodAviao() {
		return CodAviao;
	}
	public void setCodAviao(int codAviao) {
		CodAviao = codAviao;
	}

}