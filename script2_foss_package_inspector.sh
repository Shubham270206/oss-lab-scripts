#!/bin/bash
# ============================================================
# Script 2: FOSS Package Inspector
# Course: Open Source Software | Chosen Software: Linux Kernel
# Description: Checks if key open-source packages are installed,
#              shows version info, and prints a philosophy note
# Author: Shubham Sinha | Regn: 24BAI10656
# ============================================================

# --- The package we are auditing ---
PACKAGE="linux-image-$(uname -r)"

echo "========================================================"
echo "            FOSS PACKAGE INSPECTOR                     "
echo "========================================================"
echo ""

# --- Check if the Linux kernel package is installed using dpkg ---
if dpkg -l "$PACKAGE" &>/dev/null; then
    echo " [INSTALLED] $PACKAGE is installed on this system."
    echo ""
    echo " Package Details:"
    echo " ----------------"
    dpkg -l "$PACKAGE" | grep "^ii" | awk '{print " Version : " $3}'
    echo " License : GNU General Public License v2 (GPL-2.0)"
    echo " Summary : The Linux kernel — core of the operating system"
else
    echo " [NOT FOUND] $PACKAGE is not found via dpkg."
    echo " Showing running kernel info instead:"
fi

echo ""

# --- Always show running kernel version regardless ---
echo " Currently Running Kernel : $(uname -r)"
echo " Architecture             : $(uname -m)"
echo " OS                       : $(uname -o)"
echo ""

echo "--------------------------------------------------------"
echo "  PHILOSOPHY NOTES (case statement)"
echo "--------------------------------------------------------"

# --- Case statement: prints a philosophy note based on package name ---
BASE_PACKAGE="linux"

case $BASE_PACKAGE in
    linux)
        echo " Linux Kernel: Born in 1991, it proved that a student's"
        echo " weekend project could power the entire world's internet."
        ;;
    apache2)
        echo " Apache: The open web server that made the internet"
        echo " accessible to everyone, not just big corporations."
        ;;
    mysql-server)
        echo " MySQL: Open source at the heart of millions of apps —"
        echo " a dual-license story of community vs commerce."
        ;;
    firefox)
        echo " Firefox: A nonprofit browser fighting to keep the web"
        echo " open, free, and not controlled by a single company."
        ;;
    vlc)
        echo " VLC: Built by students in Paris who just wanted to"
        echo " watch TV streams — now plays anything, everywhere."
        ;;
    *)
        echo " This software is part of the open-source ecosystem"
        echo " that powers the modern world."
        ;;
esac

echo ""
echo "========================================================"