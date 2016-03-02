function [boo_f,winner_f,boo_winnable_f,pos_win_f,boo_loosable_f,pos_loose_f] = TicTacToe_CheckDone(a)
  boo_winnable_f=0;
  pos_win_f=0;
  boo_loosable_f=0;
  pos_loose_f=0;
  boo_f=0;
  winner_f=0;
  for i=1:3
    x=(3*(i-1))+1:3*i;
    [boo,winner,boo_winnable,pos_win,boo_loosable,pos_loose] = TicTacToe_CheckRow(a(x));
    if boo==1
      boo_f=1;
      winner_f=winner;
      return;
    endif
    if boo_winnable==1
      boo_winnable_f=1;
      pos_win_f=x(pos_win);
    endif
    if boo_loosable==1
      boo_loosable_f=1;
      pos_loose_f=x(pos_loose);
    endif
  endfor
  for i=1:3
    x=[i,i+3,i+6];
    [boo,winner,boo_winnable,pos_win,boo_loosable,pos_loose] = TicTacToe_CheckRow(a(x));
    if boo==1
      boo_f=1;
      winner_f=winner;
      return;
    endif
    if boo_winnable==1
      boo_winnable_f=1;
      pos_win_f=x(pos_win);
    endif
    if boo_loosable==1
      boo_loosable_f=1;
      pos_loose_f=x(pos_loose);
    endif
  endfor
  
    x=[1,5,9];
    [boo,winner,boo_winnable,pos_win,boo_loosable,pos_loose] = TicTacToe_CheckRow(a(x));
    if boo==1
      boo_f=1;
      winner_f=winner;
      return;
    endif
    if boo_winnable==1
      boo_winnable_f=1;
      pos_win_f=x(pos_win);
    endif
    if boo_loosable==1
      boo_loosable_f=1;
      pos_loose_f=x(pos_loose);
    endif
    
    x=[3,5,7];
    [boo,winner,boo_winnable,pos_win,boo_loosable,pos_loose] = TicTacToe_CheckRow(a(x));
    if boo==1
      boo_f=1;
      winner_f=winner;
      return;
    endif
    if boo_winnable==1
      boo_winnable_f=1;
      pos_win_f=x(pos_win);
    endif
    if boo_loosable==1
      boo_loosable_f=1;
      pos_loose_f=x(pos_loose);
    endif
endfunction