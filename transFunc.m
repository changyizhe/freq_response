function [mod, arg] = transFunc(w)
    % Define your transfer function here, modify as you needed
    H = 1/((1i*w)^2+0.05*1i*w+25);
    
    % Calculate the modulus and argument of the transfer function

    mod = abs(H);
    arg = angle(H);
end

