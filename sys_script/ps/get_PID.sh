#!/bin/bash

ps -ef | grep xrdp-sesman | grep -v grep | awk '{print ,}'
