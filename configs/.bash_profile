#
# ~/.bash_profile
#

export ANDROID_HOME=~/android-sdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export GOPATH=~/code/go/
[[ -f ~/.bashrc ]] && . ~/.bashrc
exec startx
#(sleep 1; sway-msg 'output eDP-1 res 1800x900')& sway
