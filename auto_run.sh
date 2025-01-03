#!/bin/bash

# Press Ctrl + C to terminate the script manually

count=1  # Initialize the counter

while true
do
    # Record the start time (precision up to nanoseconds)
    start=$(date +%s.%N)

    # Execute the target command
    ./append.sh

    # Record the end time (precision up to nanoseconds)
    end=$(date +%s.%N)

    # Calculate latency (in seconds)
    latency=$(echo "$end - $start" | bc)

    # Get a human-readable timestamp
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')

    # Print the current timestamp, count, and the execution latency
    echo "[$timestamp] count=$count, latency=${latency}s"

    # Increment the counter
    count=$((count + 1))

    # Wait for 0.1 second before the next execution
    sleep 0.1
done