#.profile
# Set the users environment variables

#-------------------------#
# ENVIRONMENT - LOCALE    #
#-------------------------#
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="$LC_ALL"
export LC_COLLATE="$LC_ALL"

#-----------------------------#
# ENVIRONMENT - APPLICATIONS  #
#-----------------------------#
export LESSOPEN="|lesspipe.sh %s"
export LESS="-i -M -R -W -S -x4 -X"
export PAGER=less
export GREP_COLOR=31
#export GREP_OPTIONS="--color=always"
export NOSPLASH=1
export NOWELCOME=1
export EDITOR=vim VISUAL=vim
export IGNOREEOF=2

#------------------------------#
# usepackage derived variables #
#------------------------------#
# use GLOBAL
export HOST="`uname -n`"
export GLOBAL_PATH=/usr/local/global.files
export PRINTER="`cat ~/.defaultprinter`"
export WWW_HOME="http://www.jcvi.org"
export TITLE="${USER}@$HOST%"
export OSVERSION="`uname -r`"
export RELEASE="`uname -r`"
export MACHINE="`uname -n`"
export RSYNC_RSH="ssh"

# PREFIX_PATH
PREFIX_PATH=/home/$USER

# local/packages
PACKAGES=/usr/local/packages

# use ANNOTATION_ENV
export ANNOTATION_DIR=/usr/local/annotation

# use EGC
export ANNOT_DEVEL=/usr/local/devel/ANNOTATION
export EGC_UTILITIES=${ANNOT_DEVEL}/EGC_utilities/bin
export EGC_SCRIPTS=${ANNOT_DEVEL}/euk_genome_control/bin
export EUK_MODULES=${ANNOT_DEVEL}/Euk_modules/bin
export EUK_ORGANIZATION=${ANNOT_DEVEL}/EUK_ORGANIZATION

# JCVI projects area
export PROJECTS=/usr/local/projdata/0611/projects/

# AIP specific paths
AIP=${PROJECTS}/AIP
TAIR_DATA=DataProviders/TAIR
TAIR10_RELEASE=ftp.arabidopsis.org/Genes/TAIR10_genome_release
export TAIR10_fasta=/usr/local/projdata/0611/projects/AIP/DataProviders/TAIR/custom_data/ftp.arabidopsis.org/Sequences/whole_chromosomes/
export TAIR10_gff=/usr/local/projdata/0611/projects/AIP/DataProviders/TAIR/custom_data/ftp.arabidopsis.org/Genes/TAIR10_genome_release/TAIR10_gff3/
export fasta=/usr/local/pipeline/RNA-Seq/fastq/
export juncBASE=${AIP}/CYC/juncBASE_v0.6
export MAKER_HOME=${AIP}/local/packages/maker-2.31.8
export MPICH_BIN=${AIP}/local/packages/mpich-install/bin

# machtype
export MACHTYPE="x86_64"

# PASA
export PASAHOME=${AIP}/local/packages/PASA

# Trinity
export TRINITY_HOME=${AIP}/local/packages/trinityrnaseq

# NCBI-BLAST+
export BLASTPLUS=${PACKAGES}/ncbi-blast+/bin

# AUGUSTUS
export AUGUSTUS_CONFIG_PATH=${PACKAGES}/augustus/config

# fix PATH before updating
RPATH="${HOME}/bin|/opt/real/RealPlayer|/usr/local/bin|/usr/local/sbin"
PATH=$( echo ${PATH} | tr -s ":" "\n" | grep -vwE "(${RPATH})" | tr -s "\n" ":" | sed "s/:$//" )

# PATH
PATH=${AIP}/local/bin:${MAKER_HOME}/bin:${MPICH_BIN}:/usr/local/bin:${HOME}/bin:${EGC_SCRIPTS}:${EGC_UTILITIES}:${EUK_MODULES}:${BLASTPLUS}:/usr/local/sbin:/usr/local/genome/bin:/usr/local/common:${PATH}
PATH=${PATH}:/home/sgeworker/bin:/usr/sbin:/sbin:/opt/real/RealPlayer:/usr/local/projdata/0611/projects/AIP/local/packages/subread-1.4.6-p2-source/bin:/usr/local/projects/AIP/CYC/ngsutils/bin:${AIP}/CYC/packages/bin/:${AIP}/local/packages/rsem-1.2.19:

# LD_LIBRARY_PATH
LD_LIBRARY_PATH=/usr/local/packages/gcc-4.8.2/lib64:${AIP}/local/lib:${PACKAGES}/gcc/lib64:${PACKAGES}/samtools/lib:${PACKAGES}/bzip2/lib:${PACKAGES}/python/lib:${PACKAGES}/sybase/OCS/lib:/usr/local/lib:${HOME}/lib:/usr/lib64:/usr/local/common/env:/usr/local/packages/sailfish/lib:/usr/local/packages/atlas/lib:/usr/local/packages/boost/lib

# PYTHONPATH
PYTHONPATH=${AIP}/local/code:${HOME}/lib/python2.7/site-packages:${AIP}/local/lib/python2.7/site-packages:${PACKAGES}/python/lib/python2.7/site-packages

# PERL5LIB
PERL5LIB=${AIP}/local/lib/5.16.1:${AIP}/local/lib/perl5:${AIP}/local/lib:${EUK_MODULES}:${EGC_SCRIPTS}

# PKG_CONFIG_PATH
PKG_CONFIG_PATH=/usr/lib/pkgconfig:${PACKAGES}/glib/lib/pkgconfig
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:${HOME}/lib/pkgconfig

export PATH LD_LIBRARY_PATH PYTHONPATH PKG_CONFIG_PATH PERL5LIB

# use phred
export PHRED_PARAMETER_FILE=/usr/local/etc/PhredPar/phredpar.dat

# use tmake
export TMAKEPATH=${PACKAGES}/tmake/lib/linux-g++

# use polybaye
export POLYBAYES_LIB=${PACKAGES}/PolyBayes_3_0/lib

# use cvs
export CVSROOT=":ext:${USER}@cvs.jcvi.org:/usr/local/src/cvsroot"

# use sybase
export SYBASE=${PACKAGES}/sybase
export LANG="en_US.UTF-8"
export DSQUERY="SYBPROD"

# EVM
export EVM=${ANNOT_DEVEL}/EVidenceModeler

# use hmm
export HMMER_NCPU="1"
export HMM_SCRIPTS=${ANNOT_DEVEL}/hmm/bin

# InterProScan
export IPRSCAN_HOME=${ANNOT_DEVEL}/iprscan/iprscan_v4.7
export IPRSCAN_LIB=${IPRSCAN_HOME}/lib

# AAT
export AATPATH=/usr/local/bin

export SVNHOME="http://isvn.tigr.org/ANNOTATION"
export TZ="EST5EDT"
export LOGNAME="ccheng"

# CURL
export CURL_LIBS=${PACKAGES}/curl/lib
export CURL_CFLAGS=${PACKAGES}/curl/include

# BOOST libs
export BOOST_ROOT=${PACKAGES}/boost

# OPENMP thread number
export OMP_NUM_THREADS=64

# MYSQL
export MYSQLINC=${PACKAGES}/percona-server/include/mysql
export MYSQLLIBS="${PACKAGES}/percona-server/lib/mysql/libperconaserverclient.a -lz"

# use shell
ulimit -s unlimited >& /dev/null
ulimit -Sc 0 >& /dev/null
umask 002

# Import custom ENV
if [[ ${HOSTNAME} != "itchy" ]]; then
    export PCODE="0611"
    export EMAIL="ccheng@jcvi.org"

    SGE=/usr/local/sge_current/jcvi/common/settings.sh
    WORKFLOW=${ANNOT_DEVEL}/workflow-3.1.3/exec_env.bash
    JAVA170=/usr/local/common/env/java7.sh

    declare -a ENVVARS=(SGE WORKFLOW JAVA170)
    for i in ${ENVVARS[@]}; do
        eval ENVVAR=\$$i
        if [ -r "$ENVVAR" ]; then
            if [ "$PS1" ]; then
                . "$ENVVAR"
            else
                . "$ENVVAR" >/dev/null 2>&1
            fi
        fi
    done
fi
export CLASSPATH=.:$CLASSPATH

# MANPATH
MANPATH=${HOME}/share/man:/usr/local/common/man:${MANPATH}
MANPATH=${MANPATH}:/usr/man:/usr/X11R6/man:/opt/gnome/share/man:/usr/openwin/man
export MANPATH

#-------------------------#
# SHELL - CHECK TYPE      #
#-------------------------#
#[[ $- != *i* ]] && return
