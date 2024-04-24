frequencies=[];
amplitude=[];

amplitude_out = [];
phase_out = [];

n = 1000;% specify the number of harmonics to simulate, the more the better in general

% type in your input signal, in Fourier Series
for i = 1:n
    frequencies(i) = (2*i-1)/2*pi; 
    amplitude(i) = 8/((2*i-1)*pi);
end

for i = 1:length(frequencies)
    w = frequencies(i); % Frequency
    [mod, arg] = transFunc(w);
    disp(['At w = ', num2str(w)]);
    disp(['Modulus: ', num2str(mod)]);
    disp(['Argument: ', num2str(arg)]);
    
    amplitude_out(i)=mod*amplitude(i);
    phase_out(i)=arg;

    disp(['output amplitude: ', num2str(amplitude_out(i))])
    disp(' '); % Blank line for separation
end

%%plot the input and output 

t = -20:0.1:20;
x_in = zeros(size(t));
y_out = zeros(size(t));

for i = 1:length(frequencies)
    x_in = x_in + amplitude(i)*sin(frequencies(i)*t);
    y_out = y_out + amplitude_out(i)*sin(frequencies(i)*t+phase_out(i));
end

% Create the figure
figure;

% Plot sine function on the top subplot (x_in)
subplot(2, 1, 1); % 2 rows, 1 column, 1st subplot
plot(t, x_in, 'b'); % Plot x_in (zero vector) in blue
title('input signal'); % Title for the subplot
xlabel('Time (s)'); % Label for x-axis
ylabel('Amplitude'); % Label for y-axis
ylim([-3, 3]); % Set y-axis limits to -3 and 3
grid on;

% Plot cosine function on the bottom subplot (y_out)
subplot(2, 1, 2); % 2 rows, 1 column, 2nd subplot
plot(t, y_out, 'r'); % Plot cosine function in red
title('output signal'); % Title for the subplot
xlabel('Time (s)'); % Label for x-axis
ylabel('Amplitude'); % Label for y-axis
ylim([-3, 3]); % Set y-axis limits to -3 and 3
grid on;

