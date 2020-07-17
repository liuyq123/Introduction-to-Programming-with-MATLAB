function indices = saddle(M)
indices = [];
for i = 1 : size(M, 1)
    for j = 1 : size(M, 2)
        if M(i, j) >= max(M(i, :)) && M(i, j) <= min(M(:, j))
            indices = [indices; i, j];
        end
    end
end
if ~isempty(indices)
    indices = sortrows(indices,2);
end
end