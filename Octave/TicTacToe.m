function TicTacToe()
  a=linspace(-1,-1,9);
  boo=0;
  n=0;
  lastMove=[];
  starts=input("Enter 1 to start first,0 to start second\n");
  if starts~=1
    a(5)=1;
    (reshape(a,3,3))'
    fprintf("\n");
    n=n+1;
    lastMove=[lastMove 5];
  endif
  for j=1:4
    i=input("Enter the input position\n");
    isfree=TicTacToe_IsFree(lastMove,i);
    it=0;
    while isfree==0 && it<10
      i=input("Input invalid\nEnter valid input\n");
      isfree=TicTacToe_IsFree(lastMove,i);
      it=it+1;
    endwhile
    if it==10
      fprintf("Invalid input entered too many times\n");
      return;
    endif
    a(i)=0;
    (reshape(a,3,3))'
    fprintf("\n");
    n=n+1;
    lastMove=[lastMove i];
    [boo_f,winner_f,boo_winnable_f,pos_win_f,boo_loosable_f,pos_loose_f] = TicTacToe_CheckDone(a);
    if boo_f==1 && winner_f==0
      fprintf("You win\n");
    endif
    [pos,boo]=TicTacToe_NextMove(a,lastMove,n);
    if boo==1
      fprintf("Computer wins\n");
      return;
    endif
    a(pos)=1;
    (reshape(a,3,3))'
    fprintf("\n");
    n=n+1;
    lastMove=[lastMove pos];
  endfor
  [boo_f,winner_f,boo_winnable_f,pos_win_f,boo_loosable_f,pos_loose_f] = TicTacToe_CheckDone(a);
  if boo_loosable_f==1
    fprintf("You win\n");
  endif  
  if boo_f==1
    if winner_f==1
      fprintf("Computer wins\n");
      return;
    else
      fprintf("You win\n");
      return;
    end
  else
    fprintf("Draw\n");
  end
endfunction