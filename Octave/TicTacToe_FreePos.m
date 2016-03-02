function [free_pos,free_pos_odd,free_pos_even] = TicTacToe_FreePos(LastMove)
  x=[1:9];
  lb=length(LastMove);
  for i=1:lb
    x(LastMove(i))=0;
  endfor
  z=[];
  z1=[];
  z2=[];
  for i=1:9
    if x(i)~=0
      z=[z x(i)];
      if rem(i,2)==1
        z1=[z1 x(i)];
      else
        z2=[z2 x(i)];
      end
    endif
  endfor
  free_pos=z;
  free_pos_odd=z1;
  free_pos_even=z2;
  return;
endfunction