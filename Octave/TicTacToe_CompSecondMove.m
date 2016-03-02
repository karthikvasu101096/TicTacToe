function [pos,boo] = TicTacToe_CompSecondMove(inputState,lastMove,n)
  boo=0;
  pos=0;
  if lastMove(1)==5
    switch(n)
      case 1
        pos=1;
        return;
      case 3
        [boo_f,winner_f,boo_winnable_f,pos_win_f,boo_loosable_f,pos_loose_f] = TicTacToe_CheckDone(inputState);
        if boo_loosable_f==1
          pos=pos_loose_f;
          return;
        endif
        pos=7;
        return;
      case 5
        [boo_f,winner_f,boo_winnable_f,pos_win_f,boo_loosable_f,pos_loose_f] = TicTacToe_CheckDone(inputState);
        if boo_winnable_f==1
          pos=pos_win_f;
          boo=1;
          return;
        endif
        if boo_loosable_f==1
          pos=pos_loose_f;
          return;
        endif
      case 7
        [boo_f,winner_f,boo_winnable_f,pos_win_f,boo_loosable_f,pos_loose_f] = TicTacToe_CheckDone(inputState);
        if boo_winnable_f==1
          pos=pos_win_f;
          boo=1;
          return;
        endif
        if boo_loosable_f==1
          pos=pos_loose_f;
          return;
        endif
        [free_pos,free_pos_odd,free_pos_even] = TicTacToe_FreePos(LastMove);
        pos=free_pos(1);  
    endswitch
  else
    if rem(lastMove(1),2)==1
      switch(n)
        case 1
          pos=5;
        case 3
          [boo_f,winner_f,boo_winnable_f,pos_win_f,boo_loosable_f,pos_loose_f] = TicTacToe_CheckDone(inputState);
          if boo_winnable_f==1
            pos=pos_win_f;
            boo=1;
            return;
          endif
          if boo_loosable_f==1
            pos=pos_loose_f;
            return;
          endif
          if rem(lastMove(3),2)==0
            pos=rem(10+lastMove(1)-rem(3*lastMove(3),10),10);
            return;
          else
            [free_pos,free_pos_odd,free_pos_even] = TicTacToe_FreePos(LastMove);
            pos=free_pos_even;
          end
        case 5
          [boo_f,winner_f,boo_winnable_f,pos_win_f,boo_loosable_f,pos_loose_f] = TicTacToe_CheckDone(inputState);
          if boo_winnable_f==1
            pos=pos_win_f;
            boo=1;
            return;
          endif
          if boo_loosable_f==1
            pos=pos_loose_f;
            return;
          endif 
          [free_pos,free_pos_odd,free_pos_even] = TicTacToe_FreePos(LastMove);
          if rem(lastMove(3),2)==1
            pos=free_pos_even;
          else
            if 10-free_pos_odd(1)==lastMove(1)
              pos=free_pos_odd(2);
              return;
            else
              pos=free_pos_odd(1);
            end
          end
        case 7
          [boo_f,winner_f,boo_winnable_f,pos_win_f,boo_loosable_f,pos_loose_f] = TicTacToe_CheckDone(inputState);
          if boo_winnable_f==1
            pos=pos_win_f;
            boo=1;
            return;
          endif
          if boo_loosable_f==1
            pos=pos_loose_f;
            return;
          endif
          [free_pos,free_pos_odd,free_pos_even] = TicTacToe_FreePos(LastMove);
          pos=free_pos;
          return;
      endswitch
    else
      switch(n)
        case 1
          pos=5;
          return;
        case 3
          [boo_f,winner_f,boo_winnable_f,pos_win_f,boo_loosable_f,pos_loose_f] = TicTacToe_CheckDone(inputState);
          if boo_winnable_f==1
            pos=pos_win_f;
            boo=1;
            return;
          endif
          if boo_loosable_f==1
            pos=pos_loose_f;
            return;
          endif
          if rem(lastMove(1)+lastMove(3),10)==0
            pos=1;
            return;  
          endif
          if rem(last(3),2)==0
            pos=rem(lastMove(1)+lastMove(3)+5,10);
            return;
          else
            fop=rem(10+lastMove(3)-rem(3*lastMove(1),10),10);
            [free_pos,free_pos_odd,free_pos_even] = TicTacToe_FreePos(LastMove);
            if free_pos_odd(1)==fop || 10-free_pos_odd(1)==fop
              pos=free_pos_odd(2);
              return;
            else
              pos=free_pos_odd(1);
              return;
            end
          end
        case 5
          [boo_f,winner_f,boo_winnable_f,pos_win_f,boo_loosable_f,pos_loose_f] = TicTacToe_CheckDone(inputState);
          if boo_winnable_f==1
            pos=pos_win_f;
            boo=1;
            return;
          endif
          if boo_loosable_f==1
            pos=pos_loose_f;
            return;
          endif
        case 7
          [boo_f,winner_f,boo_winnable_f,pos_win_f,boo_loosable_f,pos_loose_f] = TicTacToe_CheckDone(inputState);
          if boo_winnable_f==1
            pos=pos_win_f;
            boo=1;
            return;
          endif
          if boo_loosable_f==1
            pos=pos_loose_f;
            return;
          endif
          [free_pos,free_pos_odd,free_pos_even] = TicTacToe_FreePos(LastMove);
          pos=free_pos(1);
          return;
      endswitch
    end
  end
endfunction