
================ Commands ran while creating/making executable  ================

# login the server via ssh with user piravate key, user name and connecting  server IPaddress
- ssh -i ~/.ssh/id_rsa user_name@server_ip_address
# checking current working
pwd

# navigate to task directory 
- cd /dev/project/tasks

# create the three deliverables folders
- touch log_peek.sh summary.txt commands.txt

# list created file
- ls

# write into log_peek.sh via vim editor
- vim log_peek.sh

# start script with shebang
- #!/bin/bash

# copying commands
- yy

# pasting commands
- p
# making log_peek.sh executable
- chmod +x log_peek.sh


================ Commands ran while testing  ================

# run log_peek.sh script
$ ./log_peek.sh
Please chose one of the log file
 /var/log/syslog
  /var/log/auth.log
  /var/log/dpkg.log
 You can type or paste one of them, or any readable path
/var/log/syslog
/var/log/syslog is a readable file

Chose a given number from the menu list
1. Show first N lines
2. Show last N lines
3. Count a keyword (case-insensitive)
4. Save a short summary to summary.txt
5. Quit
1
How many lines from the top?
5
2025-09-14T00:00:20.609839+00:00 cloudpros-beginner-bootcamp-practice-server rsyslogd: [origin software="rsyslogd" swVersion="8.2302.0" x-pid="859" x-info="https://www.rsyslog.com"] rsyslogd was HUPed
2025-09-14T00:00:20.612361+00:00 cloudpros-beginner-bootcamp-practice-server systemd[1]: logrotate.service: Deactivated successfully.
2025-09-14T00:00:20.612783+00:00 cloudpros-beginner-bootcamp-practice-server systemd[1]: Finished logrotate.service - Rotate log files.
2025-09-14T00:00:20.614119+00:00 cloudpros-beginner-bootcamp-practice-server systemd[1]: logrotate.service: Consumed 1.667s CPU time.
2025-09-14T00:00:49.792166+00:00 cloudpros-beginner-bootcamp-practice-server otelopscol[1691]: 2025-09-14T00:00:49.791Z#011error#011internal/queue_sender.go:57#011Exporting failed. Dropping data.#011{"resource": {}, "otelcol.component.id": "googlecloud", "otelcol.component.kind": "exporter", "otelcol.signal": "metrics", "error": "rpc error: code = PermissionDenied desc = Permission monitoring.timeSeries.create denied (or the resource may not exist).", "dropped_items": 5}

Chose a given number from the menu list
1. Show first N lines
2. Show last N lines
3. Count a keyword (case-insensitive)
4. Save a short summary to summary.txt
5. Quit
2
How many lines from the bottom?
3
2025-09-18T14:33:13.094356+00:00 cloudpros-beginner-bootcamp-practice-server otelopscol[1691]: #011/root/go/pkg/mod/go.opentelemetry.io/collector/exporter@v0.126.0/exporterhelper/internal/queuebatch/disabled_batcher.go:22
2025-09-18T14:33:13.094393+00:00 cloudpros-beginner-bootcamp-practice-server otelopscol[1691]: go.opentelemetry.io/collector/exporter/exporterhelper/internal/queuebatch.(*asyncQueue[...]).Start.func1
2025-09-18T14:33:13.094441+00:00 cloudpros-beginner-bootcamp-practice-server otelopscol[1691]: #011/root/go/pkg/mod/go.opentelemetry.io/collector/exporter@v0.126.0/exporterhelper/internal/queuebatch/async_queue.go:47

Chose a given number from the menu list
1. Show first N lines
2. Show last N lines
3. Count a keyword (case-insensitive)
4. Save a short summary to summary.txt
5. Quit
3
Enter the keyword to search for:
log
The keyword 'log' appeared 149 times.

Chose a given number from the menu list
1. Show first N lines
2. Show last N lines
3. Count a keyword (case-insensitive)
4. Save a short summary to summary.txt
5. Quit
4
Summary saved to summary.txt

Chose a given number from the menu list
1. Show first N lines
2. Show last N lines
3. Count a keyword (case-insensitive)
4. Save a short summary to summary.txt
5. Quit
5
Goodbye
