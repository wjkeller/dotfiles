# changing directory to code project
function c { cd ~/code/$1; }

# Shows most used commands, cool script I got this from: http://lifehacker.com/software/how-to/turbocharge-your-terminal
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"

# ssh
alias asucd-jolt='ssh appark@sv.ucdavis.edu'
alias asucd-cm='ssh appark@169.237.101.248'
alias asucd-dev='ssh web@asucd-dev.ucdavis.edu'
alias asucd-web='ssh web@asucd-web.ucdavis.edu'
alias asucd-test='ssh web@169.237.101.228'
alias asucd-mysql='ssh web@asucd-mysql.ucdavis.edu'
alias asucd-gatekeeper='ssh appark@169.237.101.254 -p 32'
alias uni-dev='ssh web@unitrans-dev.ucdavis.edu'
alias uni-web='ssh web@unitrans.com'
alias asucd-backup='ssh appark@asucd-backup.ucdavis.edu'
alias uni-olduws='ssh admin@olduws.ucdavis.edu'

# easy ssh to the ASUCD subnet
# 'asucd 248 -l appark' -> 'ssh 169.237.101.248 -l appark'
function asucd () {
  local var="ssh 169.237.101.$*"
  echo $var
  $var;
}

# ls
alias ls='ls -hF'

# misc
# careful with this since it does not properly reset the PATH
alias reload='. ~/.bash_profile'

