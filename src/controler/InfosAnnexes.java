package controler;

public class InfosAnnexes {

	private int idTypeInfo;
	private String typeInfo;
	private String libelleInfo;
	public int getIdTypeInfo() {
		return idTypeInfo;
	}
	public void setIdTypeInfo(int idTypeInfo) {
		this.idTypeInfo = idTypeInfo;
	}
	public String getTypeInfo() {
		return typeInfo;
	}
	public void setTypeInfo(String typeInfo) {
		this.typeInfo = typeInfo;
	}
	public String getLibelleInfo() {
		return libelleInfo;
	}
	public void setLibelleInfo(String libelleInfo) {
		this.libelleInfo = libelleInfo;
	}
	
	public InfosAnnexes(int idTypeInfo, String typeInfo, String libelleInfo) {
		super();
		this.idTypeInfo = idTypeInfo;
		this.typeInfo = typeInfo;
		this.libelleInfo = libelleInfo;
	}
	
	public InfosAnnexes() {
		
	}
	
}
