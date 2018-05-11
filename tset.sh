#!/bin/bash
expect << EOF
spawn ssh 172.25.0.11
expect "password"  {send "Redhat\n"]
expect "#"         {send "touch /xx.x\n"}
expect "#"         {send "exit\n"}
EOF

