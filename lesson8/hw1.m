function distance = get_distance(c1, c2)
[num, text] = xlsread('Distances.xlsx');
index1 = find(strcmp(text(1,1:end), c1));
index2 = find(strcmp(text(1:end,1), c2));

distance = num(index2 - 1, index1 - 1);

if sum(strcmp(text(:),c1)) == 0 | sum(strcmp(text(:),c2)) == 0 
    distance = -1;
end
end