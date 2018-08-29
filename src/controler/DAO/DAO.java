package controler.DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import controler.BDDException;

public abstract class DAO<T> {
	protected Connection connexionBDD=null;
	
	public DAO(Connection conn) {
		this.connexionBDD=conn;
	}

	//Pour obtenir la liste des objets de type T de la BDD
	public abstract ArrayList<T> getListe();
	
	//Pour insérer un objet de type T dans la BDD
	public abstract T insereNouveau(T param) throws BDDException, SQLException;

	public abstract T getById(int id) throws BDDException, SQLException;	
}
