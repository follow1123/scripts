#!/bin/bash

xrandr -q | awk '/connect/{print $1,$2}'
