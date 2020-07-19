function output = echo_gen(input, fs, delay, amp)
rounded = round(delay * fs);
output = [input; zeros(rounded, 1)] + [zeros(rounded, 1); input .* amp];
if max(abs(output)) > 1
    output = output ./ max(abs(output));
end
ends