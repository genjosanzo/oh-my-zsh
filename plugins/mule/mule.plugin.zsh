function listMuleCompletions { 
    local curcontext="$curcontext" state line
    typeset -A opt_args
    if [[ $words[2] == '-app' && -d ../apps ]]; then
    	reply=(`ls -1F ../apps | grep / | sed 's_/$__'`);
    else 
     	reply=(
	        -installLicense 
	        -app 
	        start 
	        stop 
	        restart
	        -debug 
	        -M-D 
    	); 
    fi
}

compctl -K listMuleCompletions mule
