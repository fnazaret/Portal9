#!/bin/bash


# © Copyright IBM Corporation 208.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html

set -e

stop()
{
	echo "----------------------------------------"
	echo "Stopping WebSphere Portal..."
 	/opt/IBM/WebSphere/wp_profile/bin/stopServer.sh WebSphere_Portal	
}

start()
{
        echo "----------------------------------------"
        echo "Stopping WebSphere Portal..."
        /opt/IBM/WebSphere/wp_profile/bin/startServer.sh WebSphere_Portal 
}

monitor()
{
	echo "----------------------------------------"
	echo "Running - stop container to exit"
	# Loop forever by default - container must be stopped manually.
	# Here is where you can add in conditions controlling when your container will exit - e.g. check for existence of specific processes stopping or errors beiing reported
	while true; do
		sleep 1
	done
}

start
trap stop SIGTERM SIGINT
monitor
