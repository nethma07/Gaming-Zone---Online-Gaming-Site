package tournament;


public class tournamentStore {
	private String playername;
	private String gamename;
	
	public tournamentStore(String playername, String gamename) {
		super();
		this.playername = playername;
		this.gamename = gamename; 
	}


	public String getplayername() {
		return playername;
	}

	public String getgamename() {
		return gamename;
	}

	

	
}
