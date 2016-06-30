# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    #eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias dir='ls --color=auto --format=vertical'
    alias vdir='ls --color=auto --format=long'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias d='ls -d */'
alias sl='ls'	# typo!

# Misc aliases
alias ..='cd ..'
alias cls='clear; ls -lh'
alias remove='rm -rfv'
alias hist='history | less'
alias vless='vim -u /usr/share/vim/vim70/macros/less.vim'
alias more='less'
alias les='less'    # typo!
alias lses='less'    # typo!
alias calc='bc'
alias list='~/bin/list'
alias grep='grep --color=auto'
alias vim='vim -p'
alias vi='vim -p'
alias exot='exit'   # typo!
alias xit='exit'   # typo!
alias py='python'
alias asndisc='linux64.asndisc'
alias today='echo `date +"%Y%m%d"`'
alias now='echo `date +"%Y%m%d_%H%M"`'
alias bedsort='sort -k1,1 -k2,2g'
alias ncpu='grep -c ^processor /proc/cpuinfo'
alias qj='qjobstats -usage -timeline -owner ccheng > results.html'
alias ro='chmod ugo+r-wx'
alias gtgff3="gt gff3 -sort -tidy -retainids -addids no -checkids yes"

# job handling
alias bd='bg && disown'

# Aliases to most frequently used folders
alias scratch='cd /local/ifs2_scratch/EUK/ccheng'

# GFF specific aliases
alias grepm='grep -P "\s+mRNA\s+\d+\s+\d+\s+"'
alias grepg='grep -P "\s+gene\s+\d+\s+\d+\s+"'

# Python aliases (Haibao's code base)
alias fasta='python -m jcvi.formats.fasta'
alias fastq='python -m jcvi.formats.fastq'
alias blast='python -m jcvi.formats.blast'
alias agp='python -m jcvi.formats.agp'
alias gff='python -m jcvi.formats.gff'
alias bed='python -m jcvi.formats.bed'
alias entrez='python -m jcvi.apps.entrez'
alias grid='python -m jcvi.apps.grid'
alias join='python -m jcvi.formats.base join'
alias setop='python -m jcvi.formats.base setop'
alias waitpid='python -m jcvi.apps.base waitpid --notify=email'

# usepackage derived aliases
alias prmenu='source /usr/local/common/prmenu/prmenu.sh'
alias print='enscript -2r -h'
alias rprint='enscript -r -fCourier6'
alias lpr='lpr -h'
alias lpr2='lpr -o sides=two-sided-long-edge'
alias manpr='troff -t -man $* | lpr -t -'
alias smlpr='enscript -fCourier8'
alias tpr='tbl $* | troff -t -ms | lp -Ttroff'
alias pwd='echo $PWD'
alias lock='xscreensaver-command -lock'
alias glock='gnome-screensaver-command --lock'
alias klock='kdesktop_lock'
alias df='df -k'
alias sybprod='declare -x DSQUERY=SYBPROD'

# Python aliases (Haibao's code base)
alias fasta='python -m jcvi.formats.fasta'
alias fastq='python -m jcvi.formats.fastq'
alias blast='python -m jcvi.formats.blast'
alias agp='python -m jcvi.formats.agp'
alias gff='python -m jcvi.formats.gff'
alias bed='python -m jcvi.formats.bed'
alias entrez='python -m jcvi.apps.entrez'
alias grid='python -m jcvi.apps.grid'
alias join='python -m jcvi.formats.base join'
alias setop='python -m jcvi.formats.base setop'

# grid aliases
alias qsub="qsub -P ${PCODE}"
alias qsubn="qsub -P 0611 -m aes -M ${EMAIL}"
alias qlogin="qlogin -P ${PCODE}"
alias qaltern="qalter -m aes -M ${EMAIL}"
