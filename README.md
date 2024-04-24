# freq_response
ME3401 frequency response demonstration, run freq_resp.m to see the simulation

Change your transfer function at Line 3 of transFunc.m
`H = (1i*w+5)/(2i*w+5);`

Change your input at line 10 - 13 of freq_resp.m
`
for i = 1:n
    frequencies(i) = (2*i-1)/2*pi; 
    amplitude(i) = 8/((2*i-1)*pi);
end
`
