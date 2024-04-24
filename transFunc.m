function [mod, arg] = transFunc(w)
    % Define your transfer function here, modify as you needed
    H = (3i+5)/(4i+9);
    
    % Calculate the modulus and argument of the transfer function

    mod = abs(H);
    arg = angle(H);
end

