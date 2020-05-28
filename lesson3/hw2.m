function [top_left, top_right, bottom_left, bottom_right] = corners(M)
top_left = M(1, 1);
top_right = M(1, end);
bottom_left = M(end, 1);
bottom_right = M(end, end);
end