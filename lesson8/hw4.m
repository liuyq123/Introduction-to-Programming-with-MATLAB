function output = blur(img, w)
[m, n] = size(img);
mige = nan(size(img) + (2*w));
    mige(w + 1:end-w, w + 1:end-w) = img;
    output = 0 * img;
    for i = w + 1:m + w
      for v = w + 1:n + w
        tmp = mige(i - w:i + w,v - w:v + w);
        output(i - w,v - w) = mean(tmp(~isnan(tmp)));
      end
    end
ends