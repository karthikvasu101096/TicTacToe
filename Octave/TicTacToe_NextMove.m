function [pos,boo]=TicTacToe_NextMove(inputState,lastMove,n)
  if rem(n,2)==0
    [pos,boo]=TicTacToe_CompFirstMove(inputState,lastMove,n);
    return;
  else
    [pos,boo]=TicTacToe_CompSecondMove(inputState,lastMove,n);
    return;
  endif
endfunction