#!/bin/bash
# ============================================================
# Script 1: System Identity Report
# Course: Open Source Software | Chosen Software: Linux Kernel
# Description: Displays system information like a welcome screen
# Author: Shubham Sinha | Regn: 24BAI10656
# ============================================================

# --- Variables ---
STUDENT_NAME="Shubham Sinha"
SOFTWARE_CHOICE="Linux Kernel"

# --- Collect system information using command substitution ---
KERNEL=$(uname -r)
DISTRO=$(lsb_release -d | cut -f2)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date '+%d %B %Y, %H:%M:%S')

# --- Display the welcome screen ---
echo "========================================================"
echo "       OPEN SOURCE AUDIT — SYSTEM IDENTITY             "
echo "========================================================"
echo ""
echo "  Student  : $STUDENT_NAME"
echo "  Software : $SOFTWARE_CHOICE"
echo ""
echo "--------------------------------------------------------"
echo "  SYSTEM INFORMATION"
echo "--------------------------------------------------------"
echo "  Distribution : $DISTRO"
echo "  Kernel Ver.  : $KERNEL"
echo "  Logged User  : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""
echo "--------------------------------------------------------"
echo "  LICENSE INFORMATION"
echo "--------------------------------------------------------"
echo "  The Linux Kernel is licensed under GNU GPL v2."
echo "  This means you are FREE to:"
echo "   - Use this OS for any purpose"
echo "   - Study and modify the source code"
echo "   - Distribute copies to others"
echo "   - Share your modifications (must stay GPL v2)"
echo ""
echo "========================================================"
echo "  'Free as in freedom, not just free as in free beer.'"
echo "  — Richard Stallman"
echo "========================================================"