# configs


#TMUX 

Tmux is helpful command for running tasks on server - you can detach from tmux session and turn off your local computer. You can later attach again to tmux session on the server.

Essential tmux commands:
•creating new tmux session: tmux new -s myname
•detaching from woking screen: ctrl+b then d
•listing working screen sessions: tmux ls

•attaching to working screen: tmux a -t  <screen_name>
•terminating the screen: tmux kill-session -t myname

more commands here: https://gist.github.com/henrik/1967800
