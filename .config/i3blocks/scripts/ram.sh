#!/bin/bash
free -h | awk '/Mem/ {print "RAM:" $3}'
