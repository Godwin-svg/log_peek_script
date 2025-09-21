#!/bin/bash

# asking user repeatedly to chose a log file or enter a valid file path
while true; do
        echo "Please chose one of the log file"
        echo " /var/log/syslog "
        echo "  /var/log/auth.log"
        echo "  /var/log/dpkg.log"
        echo " You can type or paste one of them, or any readable path"
        read log_file

        # validate weather the file  is valid and readable
        if [ -f "$log_file" ] && [ -r "$log_file" ]; then
                echo "$log_file is a readable file"
                break
        else
                echo "$log_file is not a readable file or the part provide is not valid"
        fi
done

# Menu list
while true; do
        echo ""
        echo "Chose a given number from the menu list"
        echo "1. Show first N lines"
        echo "2. Show last N lines"
        echo "3. Count a keyword (case-insensitive)"
        echo "4. Save a short summary to summary.txt"
        echo "5. Quit"
        read choice

        # if 1 is seleted, you will be prompted to chose number of lines of log file from the top to display
        if [ "$choice" = "1" ]; then
                echo "How many lines from the top?"
                read n
                head -n "$n" "$log_file"


        # if 2 is seleted, you will be prompted to chose number of lines of log file from the tail to display
        elif [ "$choice" = "2" ]; then
                echo "How many lines from the bottom?"
                read n
                tail -n "$n" "$log_file"

        # if 3 is seleted, you will be prompted to a keyword
        elif [ "$choice" = "3" ]; then
                echo "Enter the keyword to search for:"
                read keyword
                count=$(grep -i "$keyword" "$log_file" | wc -l)
                echo "The keyword '$keyword' appeared $count times."


        # if 4 is seleted, summary.txt will be created/appended with (timestamp, totalines, error_count,info_count)
        elif [ "$choice" = "4" ]; then
                timestamp=$(date)
                total_lines=$(wc -l < "$log_file")
                error_count=$(grep -i "error" "$log_file" | wc -l)
                info_count=$(grep -i "info" "$log_file" | wc -l)

                if [ ! -f summary.txt ]; then
                        echo "Creating summary.txt..."
                        echo "==== Log Summary ====" > summary.txt
                fi

                echo "" >> summary.txt
                echo "Summary at: $timestamp" >> summary.txt
                echo "Log file: $log_file" >> summary.txt
                echo "Total lines: $total_lines" >> summary.txt
                echo "ERROR lines: $error_count" >> summary.txt
                echo "INFO lines: $info_count" >> summary.txt
                echo "Summary saved to summary.txt "


        #Select 5 to quit
        elif [ "$choice" = "5" ]; then
                echo "Goodbye "
                break

        else
                echo "Invalid choice, please try again."
        fi
done
