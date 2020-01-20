function [] = genprescaleindeces()

  for bpm =  60:10:240
    ind = round((50000000/(bpm/60))/4);
    fprintf('%i when %i,\n', bpm, ind)
  endfor
endfunction
