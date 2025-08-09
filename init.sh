#!/usr/bin/env bash
set -e

echo "🔧 Initializing pre-commit environment..."

# Auto-install Homebrew if missing
if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install missing tools via brew
install_if_missing() {
  local tool="$1"
  if ! command -v "$tool" >/dev/null 2>&1; then
    echo "ℹ️  Installing $tool via brew..."
    brew install "$tool"
  else
    echo "✅ $tool is already installed."
  fi
}

install_if_missing jq
install_if_missing gh

# Check GitHub CLI authentication
if ! gh auth status >/dev/null 2>&1; then
  echo "⚠️  GitHub CLI not authenticated."
  echo "Running: gh auth login"
  gh auth login
fi

# Install GitHub extension
if ! gh extension list | grep -q "models"; then
  echo "Installing gh-models extension..."
  gh extension install github/gh-models
else
  echo "✅ gh-models extension already installed."
fi

# Download sound files (using pairs in a flat array)
mkdir -p sounds
echo "🎵 Downloading sound assets..."

sound_list=(
  "applause.mp3 https://cdn.pixabay.com/download/audio/2024/08/31/audio_aa510c96aa.mp3?filename=applause-cheer-236786.mp3"
  "debug_log.mp3 https://cdn.pixabay.com/download/audio/2022/03/10/audio_cb83142004.mp3?filename=kids-laugh-45357.mp3"
  "generic_name.mp3 https://cdn.pixabay.com/download/audio/2022/03/24/audio_edfe0e1327.mp3?filename=boing-101318.mp3"
  "hard_coded_secret.mp3 https://cdn.pixabay.com/download/audio/2024/02/20/audio_8667d9c4b2.mp3?filename=loud-thunder-192165.mp3"
  "typo.mp3 https://cdn.pixabay.com/download/audio/2022/06/22/audio_ba8589da2d.mp3?filename=chipmunks-hehehei-113723.mp3"
)

for item in "${sound_list[@]}"; do
  name=$(echo "$item" | awk '{print $1}')
  url=$(echo  "$item" | awk '{print $2}')
  dest="sounds/$name"

  if [ ! -f "$dest" ]; then
    echo "  Downloading $dest"
    curl -fsSL "$url" -o "$dest"
  else
    echo "  ✅ $dest already exists"
  fi
done

echo "✅ Environment initialized successfully!"
