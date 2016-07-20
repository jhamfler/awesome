#!/bin/sh
acpi -b | grep -Eo "[0-9]+:[0-9]+:[0-9]+" 

