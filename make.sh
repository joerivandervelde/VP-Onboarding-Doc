#!/usr/bin/env bash
# Command file for Sphinx documentation (Unix shell version)
#
# How to run:
#
# 1) Assuming you have Python, install Sphinx and theme:
# pip install sphinx
# pip install sphinx-rtd-theme
#
# 2) Execute this script:
# chmod +x make.sh
# ./make.sh html
#
# 3) Open the result:
#  open _build/html/index.html

# Switch to the directory that contains this script (like Windows pushd %~dp0)
pushd "$(dirname "$0")" >/dev/null || {
  echo "Unable to enter script directory"; exit 1;
}

# ─── Configuration ────────────────────────────────────────────────────────────
SPHINXBUILD=${SPHINXBUILD:-sphinx-build}   # Use existing var or default
SOURCEDIR="."
BUILDDIR="_build"
SPHINXPROJ="ejprdonboarding"               # Unused by the script itself but kept
# ──────────────────────────────────────────────────────────────────────────────

show_help () {
  "$SPHINXBUILD" -M help "$SOURCEDIR" "$BUILDDIR" ${SPHINXOPTS:-}
}

# If no target supplied, display help and exit (behaves like “goto help”)
if [[ -z $1 ]]; then
  show_help
  popd >/dev/null
  exit 0
fi

# Ensure the sphinx-build executable is available
if ! command -v "$SPHINXBUILD" >/dev/null 2>&1; then
  cat <<'EOF'

The 'sphinx-build' command was not found. Make sure you have Sphinx
installed, then set the SPHINXBUILD environment variable to point
to the full path of the 'sphinx-build' executable. Alternatively you
may add the Sphinx directory to PATH.

If you don't have Sphinx installed, grab it from
https://www.sphinx-doc.org/
EOF
  popd >/dev/null
  exit 1
fi

# Run sphinx-build with the requested target (e.g. html, latexpdf, clean…)
"$SPHINXBUILD" -M "$1" "$SOURCEDIR" "$BUILDDIR" ${SPHINXOPTS:-}

# Return to the original directory
popd >/dev/null
