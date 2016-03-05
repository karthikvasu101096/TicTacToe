
public class TicTacToe {

	public static CheckDoneValues checkRow(int r[]){
		int zero_counter=0,one_counter=0,blank_counter=0,i,blank_pos=-1;
		CheckDoneValues cdv=new CheckDoneValues();
		for(i=0;i<3;i++){
			switch(r[i]){
			case 1:
				one_counter=one_counter+1;
				break;
			case 0:
				zero_counter=zero_counter+1;
				break;
			case -1:
				blank_counter=blank_counter+1;
				blank_pos=i;
				break;
			}
			if(one_counter==3){
				cdv.boo=true;
				cdv.winner=1;
			}else if(zero_counter==3){
				cdv.boo=true;
				cdv.winner=0;
			}
			if(blank_counter==1){
				if(one_counter==2){
					cdv.boo_winnable=true;
					cdv.pos_win=blank_pos;
				}else if(zero_counter==2){
					cdv.boo_loosable=true;
					cdv.pos_loose=blank_pos;
				}
			}
		}
		return cdv;
	}
	
	public static CheckDoneValues checkDone(int r[]){
		CheckDoneValues cdv = new CheckDoneValues();
		int i,j,a[]={-1,-1,-1};
		for(i=0;i<3;i++){
			for(j=0;j<3;j++){
				a[j]=r[(3*i)+j];
			}
			cdv=checkRow(a);
			if(cdv.boo){
				return cdv;
			}
			if(cdv.boo_winnable){
				cdv.pos_win=(3*i)+cdv.pos_win;
				return cdv;
			}
			if(cdv.boo_loosable){
				cdv.pos_loose=(3*i)+cdv.pos_loose;
				return cdv;
			}
		}
		for(i=0;i<3;i++){
			for(j=0;j<3;j++){
				a[j]=r[i+(3*j)];
			}
			cdv=checkRow(a);
			if(cdv.boo){
				return cdv;
			}
			if(cdv.boo_winnable){
				cdv.pos_win=i+(3*cdv.pos_win);
				return cdv;
			}
			if(cdv.boo_loosable){
				cdv.pos_loose=i+(3*cdv.pos_loose);
				return cdv;
			}
		}
		
			a[0]=r[0];
			a[1]=r[4];
			a[2]=r[8];
			cdv=checkRow(a);
			if(cdv.boo){
				return cdv;
			}
			if(cdv.boo_winnable){
				cdv.pos_win=4*cdv.pos_win;
				return cdv;
			}
			if(cdv.boo_loosable){
				cdv.pos_loose=4*cdv.pos_loose;
				return cdv;
			}
			
			a[0]=r[2];
			a[1]=r[4];
			a[2]=r[6];
			cdv=checkRow(a);
			if(cdv.boo){
				return cdv;
			}
			if(cdv.boo_winnable){
				cdv.pos_win=(2*cdv.pos_win)+2;
				return cdv;
			}
			if(cdv.boo_loosable){
				cdv.pos_loose=(2*cdv.pos_loose)+2;
				return cdv;
			}
		return cdv;
	}
	
	public static BooPos nextMove(int inputState[],int lastMove[],int n){
		BooPos boopos=new BooPos()
	}
}
