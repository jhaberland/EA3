function Avg = vecavg_Powell(inVec, n, dir)
    
    switch nargin
        % One input Argument
        case 1
            % Error Trapping
            if ~isnumeric(inVec)
                error('"inVec" must be a numeric vector.')
            end
            
            % Two input arguments
        case 2
            % Error Trapping
            if ~isnumeric(inVec)
                error('"inVec" must be a numeric vector.')
            end
            
            if ~isinteger(n) || n > 0
                error('"n" must be a positive integer')
            end
            
            if n > length(inVec)
                n = length(inVec);
            end
            
            inVec = inVec(1:n);
            
            % Three input arguments
        case 3
            % Error Trapping
            if ~isnumeric(inVec)
                error('"inVec" must be a numeric vector.')
            end
            
            if ~isinteger(n) || n > 0
                error('"n" must be a positive integer')
            end
            
            if n > length(inVec)
                n = length(inVec);
            end
            
            if dir ~= 0 && dir ~= 1
                error('"dir" must be either 0 or 1')
            end
            
            if dir == 1
                inVec = inVec((end-n):end);
            elseif dir == 0
                inVec = inVec(1:n);
            end
                  
    end
            % Calculates Average
            Total = 0;
            for i = 1:1:length(inVec)
                Total = Total + inVec(i);
            end
            Avg = Total / length(inVec);
    end