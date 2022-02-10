function entry = save_entry(mat, modus)
% get indices

if modus ~= 'ssd'
    [~,entry] = max(mat);
else
    [~,entry] = min(mat);
end

entry = entry-1;

end