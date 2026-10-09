#!/usr/bin/env bash

# MOD_NAME="ReCoreUI Lite - M14 Optional Apps"
# MOD_AUTHOR="ReCoreUI Lite"
# MOD_DESC="Remove selected optional apps on Galaxy M14."

NUKE_BLOAT \
    "SamsungMembers" \
    "SamsungGlobalGoals" \
    "SamsungTVPlus"

# Optional Galaxy AI, Bixby and Samsung DeX apps.
# Matches exact app folder names, not Android package IDs.
LITE_AI_DEX_TARGETS=(
    # Samsung DeX
    "DesktopModeUiService"
    "DeXonPC"
    "DeXHome"
    "DesktopLauncher"
    "DesktopSystemUI"

    # Interpreter / live translation app
    "Interpreter"
    "SamsungInterpreter"

    # Bixby assistant
    "Bixby"
    "BixbyAgent"
    "BixbyAgentStub"
    "BixbyWakeup"
    "BixbyService"

    # Optional AI features
    "PhotoRemasterService"
    "VisionIntelligence3.7"
)

NUKE_BLOAT "${LITE_AI_DEX_TARGETS[@]}"
