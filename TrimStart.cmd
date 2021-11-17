@echo off
rem  This script removes the beginning of a wav file up to a specified point and
rem  places the resulting wav file in the "_trimmed" subfolder.

rem  Parameter 1: input wav file
rem  Parameter 2: starting point of audio to retain in seconds

rem  SoX (Sound eXchange) is required.

sox "%1" "_trimmed\trimmed_%1" trim %2
