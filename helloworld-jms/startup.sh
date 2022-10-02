#!/usr/bin/env bash
echo "Running startup script..."

$JBOSS_HOME/bin/add-user.sh -a -u 'quickstartUser' -p 'quickstartPwd1!' -g 'guest'

$JBOSS_HOME/bin/jboss-cli.sh --connect --file=/home/site/deployments/tools/configure-jms.cli

echo "Startup script completed."
