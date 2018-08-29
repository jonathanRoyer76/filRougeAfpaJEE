package controler.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import controler.BDDException;
import controler.Client;
import controler.CommandeProduit;

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

	@Override
	public CommandeProduit insereNouveau(CommandeProduit param) throws BDDException, SQLException {
		CommandeProduit retour = new CommandeProduit();
		
		CallableStatement statement = connexionBDD.prepareCall("call sp_insert_produit_commande(?,?,?,?,?,?,?,?,?)");
		statement.setInt(1, Client.getIdUser());
		statement.setInt(2, param.getIdProduit());
		statement.setInt(3, param.getQuantite());
		statement.setDouble(4, param.getPrixHT());
		statement.setDouble(5, param.getTauxRemise());
		statement.setDouble(6, param.getTauxTVA());
		statement.registerOutParameter(7, java.sql.Types.INTEGER);
		statement.registerOutParameter(8, java.sql.Types.VARCHAR);
		statement.registerOutParameter(9, java.sql.Types.INTEGER);
		
		statement.execute();
		
		int erreurCode = statement.getInt(7);
		String erreurMessage = statement.getString(8);
		
		switch (erreurCode) {
		case -1:
			retour.setIdCommandeProduit(statement.getInt(9));
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
	public CommandeProduit getById(int id) throws BDDException, SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
