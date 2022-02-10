function sol = calculate_ssd(w_1, w_2)
% compute sum of squared differences

sol = immse(w_1, w_2); %returns mean squared error
sol = sol*prod(size(w_1));
end