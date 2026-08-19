# ============================================================
# Terminal Colors & Styles
# ============================================================
# Styles
RESET=$'\e[0m'
BOLD=$'\e[1m'
DIM=$'\e[2m'
UNDERLINE=$'\e[4m'

# Base colors
BLACK=$'\e[30m'
RED=$'\e[31m'
GREEN=$'\e[32m'
YELLOW=$'\e[33m'
BLUE=$'\e[34m'
MAGENTA=$'\e[35m'
CYAN=$'\e[36m'
WHITE=$'\e[37m'

# Bright colors
BRIGHT_BLACK=$'\e[90m'
BRIGHT_RED=$'\e[91m'
BRIGHT_GREEN=$'\e[92m'
BRIGHT_YELLOW=$'\e[93m'
BRIGHT_BLUE=$'\e[94m'
BRIGHT_MAGENTA=$'\e[95m'
BRIGHT_CYAN=$'\e[96m'
BRIGHT_WHITE=$'\e[97m'

# ============================================================
# Semantic Colors
# ============================================================

# Structure
TITLE="${BOLD}${BRIGHT_CYAN}"
HEADING="${BOLD}${WHITE}"
SUBHEADING="$CYAN"

# Information
INFO="${DIM}${CYAN}"

# Data
KEY="$CYAN"
VALUE="$WHITE"

# Status
SUCCESS="$GREEN"
WARNING="$YELLOW"
ERROR="$RED"

# Supporting
MUTED="$BRIGHT_BLACK"
LINK="$BRIGHT_BLUE"

# Emphasis
HIGHLIGHT="${BOLD}${YELLOW}"

# ============================================================
# Visual Elevation
# ============================================================

GRAY_01=$'\e[38;5;232m'
GRAY_02=$'\e[38;5;238m'
GRAY_03=$'\e[38;5;244m'
GRAY_04=$'\e[38;5;250m'
GRAY_05=$'\e[38;5;255m'

# ============================================================
# Examples
# ============================================================

# echo "${SUCCESS}✓ Done${RESET}"
# echo "${ERROR}✗ Failed${RESET}"
# echo "${WARNING}⚠ Warning${RESET}"
# echo "${INFO}→ Fetching branches...${RESET}"
# echo "${MUTED}Last updated 2 minutes ago${RESET}"
color-palette() {
    echo

    # ========================================================
    # Raw Color Palette
    # ========================================================

    printf "${BOLD}%-22s %-22s %s${RESET}\n" \
        "COLOR" "ROLE" "SAMPLE"

    printf "%-22s %-22s %s\n" \
        "----------------------" \
        "----------------------" \
        "--------"

    printf "%-22s %-22s ${BLACK}████████${RESET}\n" \
        "BLACK" "Background / Dark"

    printf "%-22s %-22s ${RED}████████${RESET}\n" \
        "RED" "Error"

    printf "%-22s %-22s ${GREEN}████████${RESET}\n" \
        "GREEN" "Success"

    printf "%-22s %-22s ${YELLOW}████████${RESET}\n" \
        "YELLOW" "Warning"

    printf "%-22s %-22s ${BLUE}████████${RESET}\n" \
        "BLUE" "Link / Navigation"

    printf "%-22s %-22s ${MAGENTA}████████${RESET}\n" \
        "MAGENTA" "Special / Accent"

    printf "%-22s %-22s ${CYAN}████████${RESET}\n" \
        "CYAN" "Info / Accent"

    printf "%-22s %-22s ${WHITE}████████${RESET}\n" \
        "WHITE" "Primary Text"

    echo

    # ========================================================
    # Bright Palette
    # ========================================================

    printf "${BOLD}%-22s %-22s %s${RESET}\n" \
        "BRIGHT COLOR" "ROLE" "SAMPLE"

    printf "%-22s %-22s ${BRIGHT_BLACK}████████${RESET}\n" \
        "BRIGHT_BLACK" "Muted / Border"

    printf "%-22s %-22s ${BRIGHT_RED}████████${RESET}\n" \
        "BRIGHT_RED" "Strong Error"

    printf "%-22s %-22s ${BRIGHT_GREEN}████████${RESET}\n" \
        "BRIGHT_GREEN" "Strong Success"

    printf "%-22s %-22s ${BRIGHT_YELLOW}████████${RESET}\n" \
        "BRIGHT_YELLOW" "Strong Warning"

    printf "%-22s %-22s ${BRIGHT_BLUE}████████${RESET}\n" \
        "BRIGHT_BLUE" "Link"

    printf "%-22s %-22s ${BRIGHT_MAGENTA}████████${RESET}\n" \
        "BRIGHT_MAGENTA" "Special"

    printf "%-22s %-22s ${BRIGHT_CYAN}████████${RESET}\n" \
        "BRIGHT_CYAN" "Active / Accent"

    printf "%-22s %-22s ${BRIGHT_WHITE}████████${RESET}\n" \
        "BRIGHT_WHITE" "Secondary Text"

    echo

    # ========================================================
    # Semantic Colors
    # ========================================================

    printf "${BOLD}%-22s %-22s %s${RESET}\n" \
        "SEMANTIC" "MEANING" "SAMPLE"

    printf "%-22s %-22s ${TITLE}████████${RESET}\n" \
        "TITLE" "Primary heading"

    printf "%-22s %-22s ${INFO}████████${RESET}\n" \
        "INFO" "Informational"

    printf "%-22s %-22s ${SUCCESS}████████${RESET}\n" \
        "SUCCESS" "Successful operation"

    printf "%-22s %-22s ${WARNING}████████${RESET}\n" \
        "WARNING" "Warning"

    printf "%-22s %-22s ${ERROR}████████${RESET}\n" \
        "ERROR" "Failure / Error"

    printf "%-22s %-22s ${MUTED}████████${RESET}\n" \
        "MUTED" "Secondary / Quiet"

    printf "%-22s %-22s ${LINK}████████${RESET}\n" \
        "LINK" "URL / Navigation"

    printf "%-22s %-22s ${KEY}████████${RESET}\n" \
        "KEY" "Label / Key"

    printf "%-22s %-22s ${VALUE}████████${RESET}\n" \
        "VALUE" "Value / Content"

    printf "%-22s %-22s ${HIGHLIGHT}████████${RESET}\n" \
        "HIGHLIGHT" "Important"

    echo

    # ========================================================
    # Visual Hierarchy / Elevation
    # ========================================================

    printf "${BOLD}%-22s %-22s %s${RESET}\n" \
        "ELEVATION" "INTENSITY" "SAMPLE"

    printf "%-22s %-22s ${GRAY_01}████████${RESET}\n" \
        "GRAY_01" "Barely visible"

    printf "%-22s %-22s ${GRAY_02}████████${RESET}\n" \
        "GRAY_02" "Primary"

    printf "%-22s %-22s ${GRAY_03}████████${RESET}\n" \
        "GRAY_03" "Secondary"

    printf "%-22s %-22s ${GRAY_04}████████${RESET}\n" \
        "GRAY_04" "Prominent"

    printf "%-22s %-22s ${GRAY_05}████████${RESET}\n" \
        "GRAY_05" "Emphasized"

    echo
}

# ============================================================
# Table Theme
# ============================================================
TABLE_SECTION_TITLE_COLOR="${BOLD}${SUCCESS}"
TABLE_HEADER_COLOR="${BOLD}${INFO}"
TABLE_SEPARATOR_COLOR="$GRAY_02"
TABLE_KEY_COLOR="$GRAY_04"
TABLE_VALUE_COLOR="$GRAY_05"
TABLE_SUMMARY_COLOR="$HIGHLIGHT"
