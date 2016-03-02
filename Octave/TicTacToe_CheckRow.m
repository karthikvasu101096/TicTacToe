function [boo,winner,boo_winnable,pos_win,boo_loosable,pos_loose] = TicTacToe_CheckRow(r)
  boo_winnable=0;
  pos_win=0;
  boo_loosable=0;
  pos_loose=0;
  pos=0;
  a=r==[-1,-1,-1];
  sum=a*a';
  if sum>0
    boo=0;
    winner=-1;
    if sum==1
      for x=1:3
        if r(x)==-1
          pos=x;
          break;
        endif
      endfor
      switch(r*[1,1,1]')
        case 1
         boo_winnable=1;
         pos_win=pos;
        case -1
         boo_loosable=1;
         pos_loose=pos;
      endswitch    
    endif
    return;
  endif
  switch (r*r')
    case 3
      boo=1;
      winner=1;
    case 0
      boo=1;
      winner=0;
    otherwise
      boo=0;
      winner=-1;
  endswitch
endfunction