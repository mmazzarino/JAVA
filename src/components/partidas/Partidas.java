package components.partidas;


public class Partidas {
	int CodPartida;
	String DataPartida;
	int CodAviao;
	
	public Partidas() {}
	
	public Partidas(int codPartida, String dataPartida, int codAviao) {
		CodPartida = codPartida;
		DataPartida = dataPartida;
		CodAviao = codAviao;
	}
	
	public int getCodPartida() {
		return CodPartida;
	}
	public void setCodPartida(int codPartida) {
		CodPartida = codPartida;
	}
	public String getDataPartida() {
		return DataPartida;
	}
	public void setDataPartida(String dataPartida) {
		DataPartida = dataPartida;
	}
	public int getCodAviao() {
		return CodAviao;
	}
	public void setCodAviao(int codAviao) {
		CodAviao = codAviao;
	}
}
