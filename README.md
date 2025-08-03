# 🎭 Commitedian 🎭
## The Pre-Commit Hook That Roasts Your Code

Welcome to **Commitedian**, the pre-commit hook that gives your code a reality check before it hits GitHub. Think of it as your friendly (and slightly sarcastic) code reviewer who loves sound effects and playful banter.

## What Does It Do?
Commitedian performs as AI-powered code review and analyses your staged files. It detects weird or verbose debug logs, hard-coded secrets, typos, and generic names, then roasts you with sounds and witty messages 😛

## Installation: Let the Fun Begin 😉

1. **Clone This Repository**:
   ```bash
   git clone <repository-url>
   cd commitedian
   ```

2. **Set Up the Hook**:
   Copy the `pre-commit` file to your Git hooks directory:
   ```bash
   cp pre-commit .git/hooks/pre-commit
   chmod +x .git/hooks/pre-commit
   ```

## How to Use It: Let the Roasting Begin 😎

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
   - **Debug Logs?** A hearty laugh from the kids. Because, really?
   - **Hard-Coded Secrets?** Thunderstorm. Drama deserved.
   - **Typos and grammatical errors?** A silly chipmunks hehehei. Classic.
   - **Generic Names?** A playful boing sound. Are you okay?
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
