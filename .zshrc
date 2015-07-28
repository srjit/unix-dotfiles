# Path to your oh-my-zsh configuration.
ZSH=/home/sree/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

setopt append_history no_inc_append_history no_share_history

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh


ngRoot=$HOME/NG


##############################################################
####################### 0x000000 #############################
##############################################################                                                                                                         

export JAVA_HOME=/home/sree/jdk1.7.0_79
export SCALA_HOME=/home/sree/scala-2.11.6
export PLAY_HOME=/home/sree/play-2.2.0

export PATH=$PATH:$JAVA_HOME/bin:$GROOVY_HOME/bin:$SCALA_HOME/bin:$PLAY_HOME


##############################################################
######################    IDEs      ##########################
##############################################################                                                                                                         

export IDEA_HOME=$PATH:/home/sree/idea-IU-141.177.4
export ECLIPSE_HOME=PATH=$PATH:/home/sree/eclipse


export PATH=$PATH:$IDEA_HOME/bin:$ECLIPSE_HOME


##############################################################
########################    PAWNS    ######################### 
##############################################################                                                                                                         


export HADOOP_HOME=/home/sree/hadoop-2.7.0
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export YARN_CONF_DIR=$HADOOP_CONF_DIR
export SPARK_HOME=/home/sree/spark-1.4.0-bin-hadoop2.6
export SPARK_MASTER=localhost
export SPARK_LOCAL_IP=localhost
export SPARK_LIBARY_PATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$HADOOP_HOME/lib/native

export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.8.2.1-src.zip:$PYTHONPATH

export PATH=$PATH:$HIVE_HOME/bin

export PATH=$PATH:$HADOOP_INSTALL/bin
export PATH=$PATH:$HADOOP_INSTALL/sbin

##### Elastic Search Variables #####
export ELASTIC_SEARCH_HOME=$ngRoot/elasticsearch-1.0.0


export SHARK_HOME=$ngRoot/shark-0.9.1-bin-hadoop2
#export SPARK_HOME=$ngRoot/spark-0.9.1-bin-hadoop2
#export SQOOP_HOME=/home/sree/sqoop-1.99.3-bin-hadoop200


export PATH=$PATH:$SHARK_HOME/bin:$HIVE_HOME/bin:$SPARK_HOME/sbin:$SPARK_HOME/bin:$SQOOP_HOME/bin:$ELASTIC_SEARCH_HOME/bin:/home/sree/rssowl


##############################################################
###################       TOOLS      #########################                                   
##############################################################                                                                                                         
export MAVEN_HOME=/home/sree/apache-maven-3.1.1
export GRADLE_HOME=/home/sree/gradle-1.11
export ANT_HOME=/home/sree/apache-ant-1.9.2
export SBT_HOME=/home/sree/NG/sbt

export PATH=$PATH:$MAVEN_HOME/bin:$GRADLE_HOME/bin:$ANT_HOME/bin:$SBT_HOME/bin


############################################################## 
###################    FRAMEWORKS     ########################                                   
##############################################################                                                                                                         
export GRAILS_HOME=/home/sree/grails-2.1.0
#export GRAILS_HOME=/home/sree/grails-2.3.7
#export PLAY_HOME=$PATH:/home/sree/play-2.2.0

export PATH=$PATH:$GRAILS_HOME/bin:$PLAY_HOME/bin


##############################################################
####################    STORAGE       ########################
##############################################################                                                                                                         

export MONGO_HOME=PATH=$PATH:/home/sree/mongodb-linux-x86_64-2.2.2

export PATH=$PATH:$MONGO_HOME/bin

##############################################################
##############    MY CUSTOM SCRIPTS      #####################                                                                                                  ##############################################################                                                                                                         

export SCRIPTS_HOME=$PATH:/home/sree/scripts

export SVD_HOME=/home/sree/svd/SVDLIBC
export PATH=$PATH:$SVD_HOME/bin


export PATH=$PATH:$SCRIPTS_HOME:$ngRoot/scripts

####################### ALIASES ##############################


alias dev='cd /home/sree/code/platform/develop'
alias ng='cd /home/sree/code/platform/next_gen/morpheus'
alias ref='cd /home/sree/code/ref_app'
alias app='cd /home/sree/code/atta_validation'
alias idea='sh /home/sree/idea-IU-141.177.4/bin/idea.sh'

alias sdk='cd /home/sree/code/platform/platform_sdk'
alias pull='git pull origin develop'
alias push='git push origin develop'


alias gr81='grails -Dserver.port=8081 run-app'
alias gr82='grails -Dserver.port=8082 run-app'
alias gr83='grails -Dserver.port=8083 run-app'
alias grc='grails clean'
alias antlr='java -jar /home/sree/Dropbox/antlr/antlrworks-1.5.jar'

alias gup='gradle clean cleanA up'
alias em='emacs -nw $1'
alias hosts='sudo emacs -nw /etc/hosts'

alias start='sh /home/sree/NG/start-ng-hadoop.sh'
alias stop='sh /home/sree/NG/stop-ng-hadoop.sh'


alias quiz='java -jar /home/sree/scripts/quiz.jar; emacs ~/Desktop/quiz.txt'
alias eng='emacs /home/sree/Desktop/My\ Stuff/english'

alias python="/usr/bin/python3.4"
alias gdb="grails run-app --debug-fork"


#  emacs -q --load ~/scripts/jde-int.el 



alias python=python2.7
