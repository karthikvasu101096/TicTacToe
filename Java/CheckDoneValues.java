
public class CheckDoneValues {

	public int winner,pos_win,pos_loose;
	public boolean boo,boo_winnable,boo_loosable;
	public CheckDoneValues() {
		winner=-1;
		pos_win=-1;
		pos_loose=-1;
		boo=false;
		boo_winnable=false;
		boo_loosable=false;
	}
	public CheckDoneValues(boolean boo, int winner, boolean boo_winnable, int pos_win, boolean boo_loosable,
			int pos_loose) {
		super();
		this.winner = winner;
		this.pos_win = pos_win;
		this.pos_loose = pos_loose;
		this.boo = boo;
		this.boo_winnable = boo_winnable;
		this.boo_loosable = boo_loosable;
	}
	
}
