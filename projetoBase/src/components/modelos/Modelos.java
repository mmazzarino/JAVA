package components.modelos;

public class Modelos {
	int CodModelo;
	String Descricao;
	
	public Modelos() {}
	
	public Modelos(int codModelo, String descricao) {
		CodModelo = codModelo;
		Descricao = descricao;
	}
	
	public int getCodModelo() {
		return CodModelo;
	}
	public void setCodModelo(int codModelo) {
		CodModelo = codModelo;
	}
	public String getDescricao() {
		return Descricao;
	}
	public void setDescricao(String descricao) {
		Descricao = descricao;
	}
}
