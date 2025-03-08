vimfile="/mnt/d/code/shell/get.sh"

redo()
{
	cd $to
	rm -r $prefix
}
alias vimit="vim $vimfile"
alias cdfrom="cd $from"
alias cdto="cd $to"
alias mvto="mv $from$file $to"
alias mvfrom="mv $to$file $from"
alias show="find . -maxdepth 1 -name $file"

f=$(basename "$vimfile") 
first_char=${f:0:1}
/mnt/d/code/shell/setmy.sh $first_char debug 1
