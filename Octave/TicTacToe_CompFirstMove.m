function [pos,boo]=TicTacToe_CompFirstMove(inputState,lastMove,n)
  boo=0;
  if rem(lastMove(2),2)==0
    switch(n)
    case 0
      pos=5;
      return;
    case 2
      pos=rem(lastMove(2)+5,10);
      return;
    case 4
      if ( lastMove(4)==rem(9*lastMove(3),10) )
        pos=rem(7*lastMove(4),10);
        return;
      else
        pos=rem(9*lastMove(3),10);
        boo=1;
        return;
      endif
    case 6
      if( lastMove(6)==rem(9*lastMove(5)+5,10) || lastMove(6)==rem(9*lastMove(5),10) )
        pos=rem(lastMove(6)+5,10);
        boo=1;
      else
        pos=rem(9*lastMove(5),10);
        boo=1;
      endif
      return;
    endswitch
  else
    switch(n)
      case 2
        pos=rem(3*lastMove(2),10);
        return;
      case 4
        if( lastMove(4)==rem(9*lastMove(3),10) )
          pos=rem(2*lastMove(4),10);
        else
          pos=rem(9*lastMove(3),10);
          boo=1;
        endif
        return;
      case 6
        if(lastMove(6)==rem(4*lastMove(5),10) )
          pos=rem(2*lastMove(6),10);
        else
          pos=rem(4*lastMove(5),10);
          boo=1;
        endif
        return;
      case 8
        if( lastMove(8)==rem(4*lastMove(7),10) )
          pos=rem(8*lastMove(8)+5,10);
        else
          pos=rem(4*lastMove(7),10);
          boo=1;
        endif
        return;
      endswitch
  endif
endfunction