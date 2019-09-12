package components.avioes;

public class Avioes {
	
	int CodAviao;
	String NomeAviao;
	double AltitudeMaxima;
	double DistanciaMaxima;
	int CodModelo;
	int CodCompanhia;

	public Avioes() {}

	/*public Avioes(int codAviao, String nomeAviao, double altitudeMaxima, double distanciaMaxima, int codModelo, int codCompanhia) {
		CodAviao = (Integer)null;
		NomeAviao = null;
		AltitudeMaxima = (Double)null;
		DistanciaMaxima = (Double)null;
		CodModelo = (Integer)null;
		CodCompanhia = (Integer)null;
	}*/

	
	public int getCodAviao() {
		return CodAviao;
	}

	public void setCodAviao(int codAviao) {
		CodAviao = codAviao;
	}

	public String getNomeAviao() {
		return NomeAviao;
	}

	public void setNomeAviao(String nomeAviao) {
		NomeAviao = nomeAviao;
	}

	public double getAltitudeMaxima() {
		return AltitudeMaxima;
	}

	public void setAltitudeMaxima(double altitudeMaxima) {
		AltitudeMaxima = altitudeMaxima;
	}

	public double getDistanciaMaxima() {
		return DistanciaMaxima;
	}

	public void setDistanciaMaxima(double distanciaMaxima) {
		DistanciaMaxima = distanciaMaxima;
	}

	public int getCodModelo() {
		return CodModelo;
	}

	public void setCodModelo(int codModelo) {
		CodModelo = codModelo;
	}

	public int getCodCompanhia() {
		return CodCompanhia;
	}

	public void setCodCompanhia(int codCompanhia) {
		CodCompanhia = codCompanhia;
	}
	
	@Override
	public String toString() {
		return "Avioes [CodAviao=" + CodAviao + ", NomeAviao=" + NomeAviao + ", AltitudeMaxima=" + AltitudeMaxima
				+ ", DistanciaMaxima=" + DistanciaMaxima + ", CodModelo=" + CodModelo + ", CodCompanhia=" + CodCompanhia
				+ "]";
	}
}
	
