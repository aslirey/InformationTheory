% Information Theory
% Lab 1 - exrcise 7

function entropy = EntropyMeasure(x,base)
if(nargin > 2 | nargin < 1), disp('Error: not correct number of input arguments'); return; end
if(nargin == 1), base = '2'; end
whos base
if( strcmp(base,'2')==0 && strcmp(base,'e')==0 && strcmp(base,'10')==0), disp('Error: not correct base number 2,e or 10'); return; end
entropy = 0;
symbols = length(x);
for i=1:symbols
    if( ( x(i) ~= 0 ) && ( x(i) ~= 1 ) )
        if base == '2'
            entropy = entropy - x(i)*log2( x(i) );
        elseif base == 'e'
            entropy = entropy - x(i)*log( x(i) );
        elseif base == '10'
            entropy = entropy - x(i)*log10( x(i) );
        end
    end
end

end