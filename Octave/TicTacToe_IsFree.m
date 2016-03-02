function isfree=TicTacToe_IsFree(lastMove,i)
  [free_pos,free_pos_odd,free_pos_even] = TicTacToe_FreePos(lastMove);
  lb=length(free_pos);
  for j=1:lb
    if free_pos(j)==i
      isfree=1;
      return;
    endif
  endfor
  isfree=0;
  return;
endfunction