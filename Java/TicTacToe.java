
public class TicTacToe {

	public static CheckDoneValues checkRow(int r[]){
		int zero_counter=0,one_counter=0,blank_counter=0,i,win_pos,loose_pos,blank_pos=-1;
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
	
}
