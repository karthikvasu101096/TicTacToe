
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
	public int getWinner() {
		return winner;
	}
	public void setWinner(int winner) {
		this.winner = winner;
	}
	public int getPos_win() {
		return pos_win;
	}
	public void setPos_win(int pos_win) {
		this.pos_win = pos_win;
	}
	public int getPos_loose() {
		return pos_loose;
	}
	public void setPos_loose(int pos_loose) {
		this.pos_loose = pos_loose;
	}
	public boolean isBoo() {
		return boo;
	}
	public void setBoo(boolean boo) {
		this.boo = boo;
	}
	public boolean isBoo_winnable() {
		return boo_winnable;
	}
	public void setBoo_winnable(boolean boo_winnable) {
		this.boo_winnable = boo_winnable;
	}
	public boolean isBoo_loosable() {
		return boo_loosable;
	}
	public void setBoo_loosable(boolean boo_loosable) {
		this.boo_loosable = boo_loosable;
	}

}
