`vagrant init jasonc/centos7`  
`vagrant up`  
`vagrant ssh`  

## Navigate to the shared mount
`cd /vagrant`

## Create script
`vim luser-demo01.sh`

## Start of script
Shebang (Sharp + Bang) followed by the path to the interpreter.  
Examples:  
`#!/bin/bash`  
`#!/usr/bin/python`

Upon execution, the interpreter is executed and the file name is passed as an argument.

e.g. `/bin/bash <filename>`

If shebang is not provided with an interpreter, the script will be executed using the current shell.

## echo command
`echo` is a shell built in.  
It is part of bash.  
Using shell built ins rather than specifying the actual path (e.g. `/bin/echo`) provides portability.

`type echo` (shows that `echo` is a shell built in)  
`type -a echo` (shows all instances of `echo` on your system)  
`help echo` (gives help on `echo`. `help` gives help on shell built ins.)  
`help echo | less` (`less` is a pager)  

`echo` followed by single quotes - the variables are not interpreted.  
`echo` followed by double quotes - the variables are interpreted.  (The interpretation of variables is not a feature of `echo`, but the feature of single / double quotes. This applies to other commands as well.)  

## uptime command
An example for a non shell built in.  
Displays the time for which the system has been up.  

`type uptime` (does not show that uptime is a shell built in).  
`type -a uptime` (does not show that uptime is a shell built in).  
`help uptime` (does not provide `help` as uptime is not a shell built in).  
`man uptime` ([provides manual).  


## variables
e.g.  
WORD='example'  
Storage location that has a name.  
Type need not be specified.  
There should not be any space between the LHS and equals or equals and RHS.  
Variable names can contain letters, digits and underscores.  
Can begin with letters or underscores, but not digits.  
By convention, variables are in upper case.  
Use `$` to get the value of the variable. E.g.  
`echo "$WORD"`  
Using `${}` is another way to get the value of the variable, especially if something needs to be appended to the value of the variable.  
`echo ${WORD}s`  
Concatenating two variables can be done as follows:  
`echo "${VAR1}${VAR2}"`  