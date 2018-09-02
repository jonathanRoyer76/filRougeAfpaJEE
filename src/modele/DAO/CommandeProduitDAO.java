package modele.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import modele.BDDException;
import modele.Client;
import modele.CommandeProduit;

public class CommandeProduitDAO extends DAO<CommandeProduit> {

	public CommandeProduitDAO(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public ArrayList<CommandeProduit> getListe() {
		// TODO Auto-generated method stub
		return null;
	}

	public CommandeProduit insereNouveau(CommandeProduit param, Client client) throws BDDException, SQLException {
		CommandeProduit retour = new CommandeProduit();
		
		CallableStatement statement = connexionBDD.prepareCall("call sp_insert_produit_commande(?,?,?,?,?,?,?,?,?,?)");
		statement.setInt(1, param.getIdCommande());
		statement.setInt(2, client.getId());
		statement.setInt(3, param.getIdProduit());
		statement.setInt(4, param.getQuantite());
		statement.setDouble(5, param.getPrixHT());
		statement.setDouble(6, param.getTauxRemise());
		statement.setDouble(7, param.getTauxTVA());
		statement.registerOutParameter(8, java.sql.Types.INTEGER);
		statement.registerOutParameter(9, java.sql.Types.VARCHAR);
		statement.registerOutParameter(10, java.sql.Types.INTEGER);
		
		statement.execute();
		
		int erreurCode = statement.getInt(8);
		String erreurMessage = statement.getString(9);		
		
		switch (erreurCode) {
		case -1:
			retour.setIdCommandeProduit(statement.getInt(10));
			return retour;
		case 20006:
			throw new BDDException(erreurCode, erreurMessage);
		case 20007:
			throw new BDDException(erreurCode, erreurMessage);
		case 20008:
			throw new BDDException(erreurCode, erreurMessage);
		case 20009:
			throw new BDDException(erreurCode, erreurMessage);
//		default :
//			throw new BDDException(erreurCode, "Erreur inattendue dans linsertion du produit dans la commande");
		}
				
		return retour;
	}
	
	@Override
	public CommandeProduit insereNouveau(CommandeProduit param) throws BDDException, SQLException {
		return null;
	}

	@Override
	public CommandeProduit getById(int id) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
