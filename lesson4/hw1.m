function [mmr, mmm] = minimax(M)
rowMax = max(M, [], 2);
rowMin = min(M, [], 2);
mmr = (rowMax - rowMin)';
maxAll = max(M, [], 'all');
minAll = min(M, [], 'all');
mmm = maxAll - minAll;
end