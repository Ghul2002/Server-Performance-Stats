# Server-Performance-Stats

A lightweight Bash script for monitoring server performance on Ubuntu.
Displays CPU, memory, disk usage, and top resource-consuming processes.

## Features

Script displays:
- Total CPU usage (`vmstat`)
- Total memory usage (`free`)
- Total disk usage (`df`)
- Top 5 processes by CPU usage (`ps`)
- Top 5 processes by memory usage (`ps`)

## Requirements

- bash shell
- vmstat
- free
- df
- ps

## Usage

./server-stats.sh
For accessibility in a whole system, put script into: `/usr/local/bin/`.

This repository was created as a project: https://roadmap.sh/projects/server-stats

(Tested on Ubuntu 22.04)

