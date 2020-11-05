function OutVec = veccmp_Powell(InVec, n, cmp)
    
    switch nargin
        
        case 2
            % Error Trapping
            if ~isnumeric(InVec)
                error('inVec must be a numeric vector.')
            end
            if ~isnumeric(n)
                error('n must be a numeric value')
            end
            
            for i = 1:1:length(InVec)
                if InVec(i) == n
                    OutVec(i) = n;
                else
                    OutVec(i) = 0;
                end
            end
            
        case 3
            % Error Trapping
            if ~isnumeric(InVec)
                error('inVec must be a numeric vector.')
            end
            if ~isnumeric(n)
                error('n must be a numeric value')
            end
            if sum(strcmp(cmp, ['>', '<', '==', '>=', '<=','~=']))
                error(['cmp needs to be one of the following items:' ...
                    '>, <, ==, >=, <=,or ~='])
            end
            
            switch cmp
                
                case '>'
                    for i = 1:1:length(InVec)
                        if InVec(i) > n
                            OutVec(i) = n;
                        else
                            OutVec(i) = 0;
                        end
                    end
                    
                case '<'
                    for i = 1:1:length(InVec)
                        if InVec(i) < n
                            OutVec(i) = n;
                        else
                            OutVec(i) = 0;
                        end
                    end
                    
                case '=='
                    for i = 1:1:length(InVec)
                        if InVec(i) == n
                            OutVec(i) = n;
                        else
                            OutVec(i) = 0;
                        end
                    end
                    
                case '>='
                    for i = 1:1:length(InVec)
                        if InVec(i) >= n
                            OutVec(i) = n;
                        else
                            OutVec(i) = 0;
                        end
                    end
                    
                case '<='
                    for i = 1:1:length(InVec)
                        if InVec(i) <= n
                            OutVec(i) = n;
                        else
                            OutVec(i) = 0;
                        end
                    end
                    
                case '~='
                    for i = 1:1:length(InVec)
                        if InVec(i) ~= n
                            OutVec(i) = n;
                        else
                            OutVec(i) = 0;
                        end
                    end
                    
            end
    end
end