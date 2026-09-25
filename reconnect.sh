#!/usr/bin/env bash
# Stellt Remote + Key-Rechte wieder her (nach Workspace-Snapshot)
set -u
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_ed25519_github2
cd "$(dirname "$0")"
git remote remove origin 2>/dev/null || true
git remote add origin git@github2:sonntagsbauer/hallo-sonntagsbauer-.git
git fetch -q origin 2>/dev/null || true
echo '--- Remote: ---'; git remote -v
echo '--- Status: ---'; git status --short --branch
