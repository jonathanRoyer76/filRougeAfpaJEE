package controler.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import controler.BDDException;
import controler.StatutClient;

public class StatutClientDAO extends DAO<StatutClient> {

	public StatutClientDAO(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public ArrayList<StatutClient> getListe() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public StatutClient insereNouveau(StatutClient param) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	public StatutClient getByIdClient(int id) throws BDDException, SQLException {
		StatutClient retour = new StatutClient();
		
		CallableStatement statement = connexionBDD.prepareCall("call sp_get_libStatutClient_by_idclient(?,?,?,?,?)");
		statement.setInt(1, id);
		statement.registerOutParameter(2, java.sql.Types.INTEGER);
		statement.registerOutParameter(3, java.sql.Types.VARCHAR);
		statement.registerOutParameter(4, java.sql.Types.INTEGER);
		statement.registerOutParameter(5, java.sql.Types.VARCHAR);
		statement.execute();
		
		int erreurCode=statement.getInt(2);
		
		switch (erreurCode) {
		case 0:
			retour.setIdStatut(statement.getInt(4));
			retour.setLibelle(statement.getString(5));
			break;
		case 20002:
			throw new BDDException(erreurCode, "Identifiant client inconnu.");
		default :
			throw new BDDException(erreurCode, "Une erreur s'est produite, merci de contacter l'administrateur."); 
		}
		
		return retour;
	}

	@Override
	public StatutClient getById(int id) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
