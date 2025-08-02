# commitedian
A pre-commit hook that gives you a reality check before Copilot leaves a comment on GitHub 🙏🏻

# Committedian: The Pre-Commit Hook That Roasts Your Code

Welcome to **Committedian**, the pre-commit hook that gives your code a reality check before it hits GitHub. Think of it as your friendly (and slightly sarcastic) code reviewer who loves sound effects and playful banter.

## What Does It Do?
- **AI-Powered Code Review**: Uses GitHub Copilot CLI to analyze your staged files.
- **Playful Feedback**: Detects debug logs, hard-coded secrets, typos, and generic names, then roasts you with sounds and witty messages.
- **Self-Sufficient**: Automatically downloads all the sound files it needs to keep the fun going.

## Installation (a.k.a. Let the Fun Begin)

1. **Clone This Repository**:
   ```bash
   git clone <repository-url>
   cd commitedian
   ```

2. **Get the Essentials**:
   - Install [GitHub CLI](https://cli.github.com/):
     ```bash
     brew install gh
     ```
   - Add the Copilot CLI extension:
     ```bash
     gh extension install github/copilot-cli
     ```

3. **Set Up the Hook**:
   Copy the `pre-commit` file to your Git hooks directory:
   ```bash
   cp pre-commit .git/hooks/pre-commit
   chmod +x .git/hooks/pre-commit
   ```

4. **Sound Check**:
   The script will download all the sound files it needs. Just make sure you’re online the first time you run it.

## How to Use It (a.k.a. Let the Roasting Begin)

1. **Stage Your Changes**:
   ```bash
   git add <files>
   ```

2. **Try to Commit**:
   ```bash
   git commit
   ```
   - If your code has issues, the hook will block the commit, play a sound, and roast you with a playful message.
   - Fix the issues and try again. Or don’t. Your call.

3. **What to Expect**:
   - **Debug Logs?** Sitcom laugh. Because, really?
   - **Hard-Coded Secrets?** Thunderstorm. Drama deserved.
   - **Typos?** A "whoops" sound. Classic.
   - **Generic Names?** A playful "lost" sound. Are you okay?
   - **No Issues?** A positive sound. You’re a star!

## Notes (a.k.a. The Fine Print)
- This hook is for macOS and uses `afplay` for sound playback. Sorry, Windows folks.
- The `sounds` directory will magically appear with all the required files. Don’t delete it unless you want to ruin the fun.

## Troubleshooting (a.k.a. When Things Go Wrong)
- If the hook doesn’t run, make sure it’s executable:
  ```bash
  chmod +x .git/hooks/pre-commit
  ```
- Missing sound files? Delete the `sounds` directory and let the script download them again.

## License
MIT License. Because sharing is caring.
