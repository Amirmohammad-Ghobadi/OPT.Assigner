#!/bin/bash

usage() {
    echo "Usage: $0 -f <filename> -d <directory>"
    exit 1
}

while getopts "f:d:" opt; do
    case $opt in
        f) filename=$OPTARG ;;
        d) directory=$OPTARG ;;
        *) usage ;;
    esac
done

if [[ -z "${filename:-}" || -z "${directory:-}" ]]; then
    usage
fi

echo "File: $filename, Directory: $directory"
