#!/bin/sh

amixer sget Master | awk -F '[][]' 'END{print $2}'
