function [tele] = vaildateData(tele)
sz = size(tele)    
if(sz(2) ~= 17)
    totalNeeded = 17 - sz(2);
    for j=1:totalNeeded
        tele{end+j} = "-69";
    end
    
    for j=1:17
        try
            str2double(tele{j});
        catch EX
            tele{j} = "-420";
        end
    end
end

