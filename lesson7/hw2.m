function matrix = sparse2matrix(cellvec)
vec = cellvec{1, 1};
number = cellvec{1, 2};
matrix = zeros(vec(1), vec(2)) + number;
s = size(cellvec);
length = s(2);
for i = 3:length
    ele = cellvec{1, i};
    matrix(ele(1), ele(2)) = ele(3);
end