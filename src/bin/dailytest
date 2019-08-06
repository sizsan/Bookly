#!/bin/bash
​
TEST_LOG="log/test_results.log"
​
​
echo | tee -a $TEST_LOG
echo "==================================="| tee -a $TEST_LOG
echo `date`| tee -a $TEST_LOG
echo "==================================="| tee -a $TEST_LOG
echo| tee -a $TEST_LOG
​
rspec -f documentation | grep -v WARN | tee -a $TEST_LOG
echo | tee -a $TEST_LOG