% Information Theory
% Lab 1 - exrcise 6

function information = InformationMeasure(p,base)
if(nargin > 2 | nargin < 1), disp('Error: not correct number of input arguments'); return; end
if(nargin == 1), base = '2'; end
whos base
if( strcmp(base,'2')==0 && strcmp(base,'e')==0 && strcmp(base,'10')==0), disp('Error: not correct base number 2,e or 10'); return; end

if base == '2'
    information = - p*log2( p );
elseif base == 'e'
    information = - p*log( p );
elseif base == '10'
    information = - p*log10( p );
end

end