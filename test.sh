#!/bin/bash

ant clean
ant build

# Define the directory containing test files
TEST_DIR="tests"

# Define the log file name
LOG_FILE="fail_log.txt"

# Empty the log file at the start of the script
> "$LOG_FILE"

# Function to run the test and check for "fail" in output
run_test() {
    mode=$1
    file=$2
    if java -cp bin Main1 "$mode" "$file" | grep -q "fail"; then
        echo "$file - $mode" >> "$LOG_FILE"
    fi
}

# Loop through all .c files in the tests directory
for test_file in "$TEST_DIR"/*.c; do
    if [[ -f "$test_file" ]]; then
        run_test "-lexer" "$test_file"
        run_test "-parser" "$test_file"
    fi
done

echo "Testing completed. Check '$LOG_FILE' for failures."
