# Launcher for Project Junipero
# version 0.0.2 20130224

#TitleName

message .msg0 -text "Project Junipero"

#UserName PassWord Entry

label .label0 -text "Username:"

entry .entry0 -textvar username

label .label1 -text "Password:"

entry .entry1 -textvar password

set usernamedb username.tcl


#Just some text

message .msg1

#LoginButton

button .button0 -command { 
	if  {$username == "testname"} {
	[source game.tcl]
	} elseif {$username !== "testname"} {[.msg1 configure -text "Hmm. You don't seem to have an account, or you entered your account details wrong."]
	} else [.msg1 configure -text "You broke it] 
} -text "Login"

bind . <Return> ".button0 invoke"
pack .msg0 .msg1 .label0 .entry0 .label1 .entry1 .button0

#ChangeLog
# 20130224 Cleaned up notations, marked out the clean procedure, cleaned up code in general to be more visually appealing.

#temp clean
#proc clean {} {
#	for {set i 0} {$i <= 2147} {incr i} {
#		if {[winfo exists .msg$i]} {destroy .msg$i}
#		if {[winfo exists .label$i]} {destroy .label$i}
#		if {[winfo exists .entry$i]} {destroy .entry$i}
#		if {[winfo exists .button$i]} {destroy .button$i}
#	}
#}
#clean
