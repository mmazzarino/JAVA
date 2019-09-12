package components.companhiasAereas;

public class Companhias {
	int CodCompanhia;
	String Nome;
	
	
	public Companhias() {}
	
	public Companhias(int codCompanhia, String nome) {
		CodCompanhia = codCompanhia;
		Nome = nome;
	}
	
	public int getCodCompanhia() {
		return CodCompanhia;
	}
	public void setCodCompanhia(int codCompanhia) {
		CodCompanhia = codCompanhia;
	}
	public String getNome() {
		return Nome;
	}
	public void setNome(String nome) {
		Nome = nome;
	}

}
