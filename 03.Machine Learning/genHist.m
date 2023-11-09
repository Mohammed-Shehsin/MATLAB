function [outHist] = genHist(image)
% GENHIST Generates a histogram for the given image.
% The image is a matrix of size h x w x 3 with values in the range of 0 - 255.
% The resulting histogram should be a row vector of constant length.

    % Replace the following code to calculate the histogram for an RGB image.
    % Please choose an appropriate length for the outHist vector.
    R = image(:, :, 1);
    G = image(:, :, 2);
    B = image(:, :, 3);

    bins_ranges = 0:2:255;
    [outHist1, edges] = histcounts(R, bins_ranges, 'Normalization', 'probability');
    [outHist2, edges] = histcounts(G, bins_ranges, 'Normalization', 'probability');
    [outHist3, edges] = histcounts(B, bins_ranges, 'Normalization', 'probability');
    outHist = [outHist1, outHist2, outHist3];

    % outHist = zeros(1, 16);
end
