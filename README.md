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

## The Fine Print 📝
- This hook is for macOS and uses `afplay` for sound playback. Sorry, Windows and Linux folks.

## License
MIT License. Because sharing is caring.

## Assets

The sound effects used in this project are sourced from Pixabay and are used under the Pixabay Content License. They are NOT covered by the MIT License.

You can view the Pixabay license terms here: [https://pixabay.com/service/license-summary/](https://pixabay.com/service/license-summary/)

