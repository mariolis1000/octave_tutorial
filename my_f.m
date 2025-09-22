

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} my_f (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn



function result = my_f (va)
  while  va > va/2
    va = va -1;
  endwhile
  %%
  result = va;
endfunction
