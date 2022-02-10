function vector = calculate_normalized_corr(mat_1,mat_2)
% compute the normalized correlation

res = 0;
mat_1 = mat_1(:)';
mat_1 = double(mat_1);
mat_2 = mat_2(:)';
mat_2= double(mat_2);

iter = 1;
while iter <= max(size(mat_1))
    res = ((mat_1(iter)-mean(mat_1))*(mat_2(iter)-mean(mat_2))) + res;
    iter = iter + 1;
end

%compute final results
var_prod = var(mat_1)*var(mat_2);
var_prod_sqrt = sqrt(var_prod);
vector = 1/max(size(mat_1)) * res/var_prod_sqrt;

end