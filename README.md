# VS Code Tips & Tricks: From Beginner to Pro

> *"VS Code is like a knife — it's only as good as the hands that wield it."*

Welcome! This guide is for anyone who's ever felt like VS Code is doing more to slow them down than speed them up. Whether you're brand new or just haven't explored beyond the basics, these are the real habits and shortcuts that experienced developers use every single day.

**How to use this guide:** Don't try to learn everything at once — that's a recipe for remembering nothing. Pick 2–3 tips per week, practice them until they feel natural, then come back for more. Think of it like learning to touch-type: awkward at first, automatic later.

---

## 📚 Table of Contents

| # | Tip |
|---|-----|
| 1 | [VS Code CLI — Open from Terminal](#1-vs-code-cli) |
| 2 | [Release the Mouse](#2-release-the-mouse) |
| 3 | [Command Palette](#3-command-palette) |
| 4 | [Run Commands — Two Ways](#4-run-commands--two-ways) |
| 5 | [Navigate the Sidebar Without the Mouse](#5-navigate-the-sidebar) |
| 6 | [Find a File Instantly](#6-find-a-file-instantly) |
| 7 | [Find Symbols in a File (`@`)](#7-find-symbols-in-a-file) |
| 8 | [Find Symbols Across the Project (`#` and `Cmd+T`)](#8-find-symbols-across-the-project) |
| 9 | [Move Around Quickly (No Mouse!)](#9-move-around-quickly) |
| 10 | [Expand & Shrink Selection](#10-expand--shrink-selection) |
| 11 | [Select All Occurrences at Once](#11-select-all-occurrences-at-once) |
| 12 | [Multi-cursor Editing (`Ctrl+D`)](#12-multi-cursor-editing) |
| 13 | [Delete or Move a Line](#13-delete-or-move-a-line) |
| 14 | [Highlight & Comment Lines](#14-highlight--comment-lines) |
| 15 | [Emmet: Balance Outward](#15-emmet-balance-outward) |
| 16 | [Emmet: Wrap with Abbreviation](#16-emmet-wrap-with-abbreviation) |
| 17 | [Auto Rename Tag Extension](#17-auto-rename-tag) |
| 18 | [Quokka — Live JavaScript Runner](#18-quokka) |
| 19 | [JSDoc Extension](#19-jsdoc-extension) |
| 20 | [Better Comments Extension](#20-better-comments-extension) |
| 21 | [Integrated Terminal](#21-integrated-terminal) |
| 22 | [Terminal Aliases](#22-terminal-aliases) |
| 23 | [Tasks — Save Your Terminal Commands](#23-tasks) |
| 24 | [Makefile — Orchestrate Everything](#24-makefile) |
| 25 | [Git Source Control UI](#25-git-source-control) |
| 26 | [GitLens Extension](#26-gitlens-extension) |
| 27 | [Remote Repositories Extension](#27-remote-repositories) |
| 28 | [Remote SSH & Dev Containers](#28-remote-ssh--dev-containers) |
| 29 | [Custom Snippets](#29-custom-snippets) |
| 30 | [Community Snippets](#30-community-snippets) |
| 31 | [Auto-create Nested Directories](#31-auto-create-nested-directories) |
| 32 | [Paste JSON as Code](#32-paste-json-as-code) |
| 33 | [Rename Symbol Safely](#33-rename-symbol-safely) |

---

## 1. VS Code CLI

Imagine you just created a new project folder from the terminal. Instead of opening VS Code and then navigating to that folder through the file explorer, you can skip all of that with one command.

```bash
# Open the current folder in VS Code
code .

# Open a specific file
code app.js

# Open any folder by path
code /path/to/my-project
```

> ⚠️ **Mac/Linux users:** You need to add the `code` command to your PATH first.
> Inside VS Code, open the Command Palette (`Ctrl+Shift+P`) and search for:
> **"Shell Command: Install 'code' command in PATH"**
>
> On Windows, this works automatically after installation.

---

## 2. Release the Mouse

Here's something worth hearing early: **the mouse is slowing you down.**

VS Code lets you do everything with a mouse, which makes it friendly to newcomers. But that same convenience can become a ceiling — you'll get comfortable clicking around and never discover how fast the keyboard can be.

You don't need to go extreme (like learning Vim). Just commit to learning **10–20 keyboard shortcuts** and your daily speed will genuinely transform. The learning curve feels awkward for about a week, and then it becomes second nature — the same way touch-typing does.

> **The mindset shift:** Every time you reach for the mouse, ask yourself — *is there a shortcut for this?* There almost always is.

---

## 3. Command Palette

**Shortcut:** `Ctrl+P` (Windows/Linux) / `Cmd+P` (Mac)

If you could only learn one shortcut, make it this one. The Command Palette is your gateway to everything in VS Code — files, settings, commands, extensions — all searchable from the keyboard.

| Type this in the palette | What happens |
|--------------------------|--------------|
| Just start typing | Searches for a file by name |
| `>` | Lists all runnable commands |
| `@` | Lists symbols in the current file |
| `#` | Searches symbols across the whole project |
| `:42` | Jumps to line 42 |

```
Ctrl+P → type "login" → press Enter → opens LoginController.js
```

Once this shortcut is in your fingers, you'll wonder how you ever lived without it.

---

## 4. Run Commands — Two Ways

Sometimes you don't want to open a file — you want to *do* something. Toggle the minimap. Change your theme. Format your document. Run a Git command.

**Option 1:** From the Command Palette, type `>` first:
```
Ctrl+P → > → type "Toggle Minimap"
```

**Option 2:** Press `F1` (or `Ctrl+Shift+P`) to jump straight to command mode, skipping one step:
```
F1 → type "Format Document" → Enter
```

Both do the same thing. `F1` is just one less keystroke — handy when you're in a hurry.

> 💡 Every menu item in VS Code shows its keyboard shortcut right next to it. That's a great way to discover new shortcuts naturally while you work.

---

## 5. Navigate the Sidebar

The file explorer sidebar is useful, but using the mouse to open it, click through folders, and return to your editor adds up over a full day of coding. Here's how to do it all from the keyboard.

| Shortcut (Mac) | Shortcut (Win/Linux) | Action |
|----------------|----------------------|--------|
| `Cmd+0` | `Ctrl+0` | Move focus to the sidebar |
| `Cmd+1` | `Ctrl+1` | Move focus back to the editor |
| `Cmd+B` | `Ctrl+B` | Toggle the sidebar open/closed |

**The workflow:** Hit `Cmd+0` to jump to the sidebar, type a few letters to filter to the file you want, press `Enter` to open it, then `Cmd+1` to jump back into the editor — all without touching the mouse.

---

## 6. Find a File Instantly

The Command Palette's default mode — just start typing — is a file finder. It's almost always faster than hunting through a folder tree in the sidebar, especially in large projects.

```
Ctrl+P → type "user" → opens user.js
```

Your brain knows the name of the file you want. Let the search do the rest.

---

## 7. Find Symbols in a File

**Shortcut:** `Ctrl+P` → `@`
**Alternative:** `Ctrl+Shift+.`

Working in a long file and need to jump to a specific function? Don't scroll. Type `@` in the palette and you'll get a list of every function, class, and variable in the file — jump to any of them instantly.

```
Ctrl+P → @ → type "handleSubmit" → jump there
```

The alternative shortcut `Ctrl+Shift+.` opens the same list directly in the file without going through the palette — one step faster.

---

## 8. Find Symbols Across the Project

**Palette shortcut:** `Ctrl+P` → `#`
**Direct shortcut:** `Ctrl+T` (Mac: `Cmd+T`)

When you want to find a function or class *anywhere* in your project — including inside `node_modules` — use `#` followed by the name.

```
Ctrl+P → # → type "authenticate" → jump to that method
```

**Pro tip — CamelCase shortcut:** For long names like `UserAuthController`, you don't have to type the whole thing. Just type the first letter of each word:

```
#UAC   ← finds UserAuthController
```

This feels like a magic trick the first time it works.

---

## 9. Move Around Quickly

Getting your cursor where it needs to go without the mouse is one of the most important foundational habits. Here are the key movement shortcuts:

| Shortcut | Action |
|----------|--------|
| `Ctrl+G` | Jump to a specific line number |
| `←` / `→` | Move one character at a time |
| `Ctrl+←` / `Ctrl+→` | Move one *word* at a time |
| `Cmd+←` / `Home` | Jump to the start of the line |
| `Cmd+→` / `End` | Jump to the end of the line |
| `Shift` + any of the above | Do the same movement but *select* text as you go |
| `Ctrl+D` | Select the word under the cursor |

**The `Shift` trick:** Hold `Shift` with any movement key and it selects text as you move. So `Shift+Ctrl+→` selects the next word. This is how you highlight precisely without ever touching the mouse.

---

## 10. Expand & Shrink Selection

**Shortcut (Mac):** `Shift+Ctrl+Cmd+→` to expand / `Shift+Ctrl+Cmd+←` to shrink
**Shortcut (Win/Linux):** `Shift+Alt+→` to expand / `Shift+Alt+←` to shrink

Place your cursor anywhere in your code and press the expand shortcut. It selects the nearest word. Press it again — it expands to the whole string. Again — includes the quotes. Again — includes the surrounding brackets. Again — includes the whole object.

```js
// Cursor is here ↓
const name = "hel|lo world";

// Press expand once  → selects "hello"
// Press expand again → selects "hello world"
// Press expand again → selects "hello world" with quotes
// Press expand again → selects the whole assignment
```

This is incredibly useful when you want to copy or replace a chunk of code but aren't sure exactly where it starts and ends. Just keep expanding until you've got what you need.

---

## 11. Select All Occurrences at Once

**Shortcut:** `Ctrl+Shift+L` (Win/Linux) / `Cmd+Shift+L` (Mac)

Click on a word, press this shortcut, and *every occurrence* of that word in the file gets selected at the same time. Start typing and they all change together.

Think of it as the all-at-once version of `Ctrl+D` — while `Ctrl+D` lets you select matches one by one, `Ctrl+Shift+L` grabs all of them in a single step.

> ⚠️ **Be careful:** This selects *text* matches, not semantic ones. If your variable name also appears inside a comment or a string, that gets selected too. For smarter renaming, use [Rename Symbol](#33-rename-symbol-safely) instead.

---

## 12. Multi-cursor Editing

**Add cursors one by one:** `Ctrl+D`
**Add cursors manually:** `Alt+Click` anywhere

`Ctrl+D` selects the word under your cursor, then each additional press selects the *next* matching word. This lets you choose *which* occurrences to edit, not all of them at once.

```js
// You want to rename the first two "count" variables but not the third
let count = 0;      // ← Ctrl+D selects this one first
let count2 = 0;     // ← Ctrl+D adds this one next
let countTotal = 0; // ← stop here — don't press Ctrl+D again
// Now type to edit just the two you selected
```

For placing cursors in completely different spots, hold `Alt` and click wherever you need a cursor. Great for writing the same CSS property across multiple selectors at once.

---

## 13. Delete or Move a Line

These shortcuts handle the line-level edits you make dozens of times a day:

| Shortcut | Action |
|----------|--------|
| `Ctrl+X` (cursor on a line, nothing selected) | Cut the entire line |
| `Ctrl+C` (same) | Copy the entire line |
| `Ctrl+Shift+K` | Delete the line entirely (no clipboard) |
| `Alt+↑` / `Alt+↓` | Move the line up or down |
| `Alt+Shift+↑` / `Alt+Shift+↓` | Copy the line up or down |

The `Alt+↑/↓` shortcut is especially satisfying. No cutting, no pasting — just grab a line and slide it wherever it needs to go.

---

## 14. Highlight & Comment Lines

**Shortcut:** `Ctrl+/` (Win/Linux) / `Cmd+/` (Mac)

This toggles comments on whatever is selected. Press it once to comment out, press it again to uncomment. Works on a single line or multiple lines at once.

```js
// Step 1: Select the lines (use Ctrl+L to select line by line)
doSomething();
doAnotherThing();

// Step 2: Press Ctrl+/
// doSomething();
// doAnotherThing();

// Step 3: Press Ctrl+/ again to uncomment
doSomething();
doAnotherThing();
```

> 💡 `Ctrl+L` selects the current line and moves the cursor down. Hold it to select multiple lines quickly, then hit `Ctrl+/`.

---

## 15. Emmet: Balance Outward

**Command:** Command Palette → `Emmet: Balance (outward)`
*(Worth binding to a key — suggested: `Ctrl+Shift+E`)*

Emmet is a built-in VS Code feature for HTML and CSS. "Balance outward" means: *select the content inside the nearest surrounding tag*. Press it again and the selection grows to include the tag itself. Press again and it jumps to the parent tag.

```html
<!-- Cursor is inside the paragraph text -->
<div class="card">
  <p>Hello |world</p>
</div>

<!-- Press once  → selects the text content inside <p> -->
<!-- Press again → selects <p>Hello world</p> with its tags -->
<!-- Press again → selects everything inside <div> -->
<!-- Press again → selects the whole <div> block -->
```

This is wonderful for navigating nested HTML without squinting at indentation.

---

## 16. Emmet: Wrap with Abbreviation

**Command:** Command Palette → `Emmet: Wrap with Abbreviation`

This pairs perfectly with Balance Outward. The old way to wrap code in a new tag: cut the content, write the opening tag, write the closing tag, paste. That's four steps. Here's the new way:

1. Select the code you want to wrap (use Balance Outward to select it cleanly)
2. Run "Emmet: Wrap with Abbreviation"
3. Type your tag — like `div.container` or `section.highlight` — and press Enter

```html
<!-- Before: you selected this line -->
<p>Hello world</p>

<!-- After wrapping with "section.highlight" -->
<section class="highlight">
  <p>Hello world</p>
</section>
```

> 💡 **Pro move:** Map "Balance Outward" to a keyboard shortcut so the whole flow takes seconds — select with one hand, wrap with the other. Once it's in your muscle memory you'll use it constantly.

---

## 17. Auto Rename Tag

**Extension:** [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)

When you rename an HTML opening tag, the closing tag updates to match automatically. Simple, but you'll miss it the moment you work on a machine that doesn't have it installed.

```html
<!-- Change <div> to <section> and </section> updates automatically -->
<div class="card">
  ...
</div>
```

Works in HTML, JSX, TSX, and XML.

---

## 18. Quokka

**Extension:** [Quokka.js](https://marketplace.visualstudio.com/items?itemName=WallabyJs.quokka-vscode)

Quokka turns your editor into a live JavaScript playground. It runs your code in the background and shows the output right next to each line, as you type — no browser console or Node script needed.

```js
const nums = [1, 2, 3, 4, 5];

const doubled = nums.map(n => n * 2);
// shows: [2, 4, 6, 8, 10]  ← right in the editor

const sum = doubled.reduce((a, b) => a + b, 0);
// shows: 30
```

Great for prototyping logic or understanding how a JavaScript method actually behaves before using it in your real code.

**To start it:** Command Palette → `Quokka: Start on Current File`

---

## 19. JSDoc Extension

**Extension:** [Add JSDoc Comments](https://marketplace.visualstudio.com/items?itemName=stevencl.addDocComments)

JSDoc is the standard way to document JavaScript functions — it's what powers the helpful hover tooltips you see when you mouse over built-in methods. This extension generates those comment blocks for your own functions automatically.

```js
// Before — just a plain function:
function calculateTax(price, rate) {
  return price * rate;
}

// After running "Add JSDoc Comments":
/**
 * Calculates the tax for a given price.
 * @param {number} price - The original price
 * @param {number} rate - The tax rate (e.g. 0.15 for 15%)
 * @returns {number} The calculated tax amount
 */
function calculateTax(price, rate) {
  return price * rate;
}
```

**Bonus tip:** Inside JSDoc comments, use `{@link FunctionName}` to link to another function. When teammates hover over that link, VS Code takes them straight to it.

---

## 20. Better Comments Extension

**Extension:** [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)

Not all comments are created equal. Some are warnings. Some are questions. Some are things you absolutely must come back to. This extension color-codes them so you can tell at a glance what each comment is about.

```js
// ! Watch out — this will break in production      (red)
// ? Should this be async?                          (blue)
// TODO: Add error handling here                    (orange)
// * This is important background context           (green)
// Regular comment — nothing special                (grey)
```

It's a small change that makes a codebase noticeably easier to read.

---

## 21. Integrated Terminal

**Shortcut:** `` Ctrl+` `` or `Ctrl+J`

VS Code has a terminal built right in, already pointing at your project folder. No need to switch windows.

**Tips for working with it:**

```bash
# Clear the terminal
Ctrl+K  (or Cmd+K on Mac)

# Go back to a previous command
↑ arrow key

# Move word by word through a command before running it
Ctrl+← / Ctrl+→
```

**Multiple terminals:** Click the `+` button to open additional sessions. Right-click any terminal tab to rename it or give it a colour. Having one called `Dev Server` and another called `Tests` is much calmer than staring at two identical panels.

**Opening terminal as an editor pane:** Some people prefer the terminal as a proper tab rather than the bottom panel. Search the Command Palette for `"Create New Terminal in Editor Area"` to try it.

**Switch tabs quickly:** `Alt+1`, `Alt+2`, and so on switch between your open editor tabs. This works in the terminal too, to switch between sessions.

---

## 22. Terminal Aliases

An alias is a short custom name for a longer terminal command. Instead of typing `ls -la` every time you want to see a full file listing, you create an alias called `l` that does it for you.

```bash
# Create aliases (only last for the current session)
alias l="ls -la"
alias t="npm run test"
alias dev="npm run dev"

# Now just type:
l       # runs ls -la
t       # runs npm run test
```

**Make aliases permanent** by saving them to a file:

```bash
touch .aliases
```

Inside `.aliases`:
```bash
alias l="ls -la"
alias t="npm run test"
alias dev="npm run dev"
```

Load them in any terminal session:
```bash
source .aliases
```

You can commit this file to source control so your whole team shares the same shortcuts.

> **Windows users:** In PowerShell, use `New-Alias -Name l -Value "Get-ChildItem"` instead.

---

## 23. Tasks

If you find yourself typing `npm run dev`, `npm test`, or `npm run build` over and over again, VS Code Tasks are for you. A Task is a saved terminal command that you can run from the Command Palette by name — no typing required.

**Setup:**

1. Command Palette → `Tasks: Configure Task`
2. Edit the `.vscode/tasks.json` file it creates:

```json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Start Dev Server",
      "type": "shell",
      "command": "npm run dev"
    },
    {
      "label": "Run Tests",
      "type": "shell",
      "command": "npm test"
    }
  ]
}
```

**To run a task:**
```
Command Palette → Tasks: Run Task → choose "Start Dev Server"
```

Each task runs in its own named terminal panel, so you always know what's what.

---

## 24. Makefile

A `Makefile` is an old Unix tool — it's been around since the 1970s and it's still brilliant. Think of it as a more powerful, shareable version of Tasks that lives in your project and works in any terminal, not just VS Code.

```makefile
# Run with: make web
web:
	npm run start

# Run with: make test
test:
	npm test

# Run with: make build
build:
	npm run build
	npm run css

# Chain commands — make deploy runs build first, then deploys
deploy: build
	./scripts/deploy.sh
```

Just type `make` followed by the target name. You can chain targets so one command kicks off a whole sequence.

> **Why use this over Tasks?** Makefiles work everywhere — any terminal, any machine, any editor. Someone can clone your project and type `make web` without reading a word of documentation.

---

## 25. Git Source Control

Using Git from the command line is powerful, but a bit dangerous if you're still learning it. VS Code's built-in Git panel makes the most common operations safe and visual.

**To find it:** Click the branch icon in the left sidebar, or press `Ctrl+Shift+G`.

**What you can see at a glance:**
- Every file that has been changed, added, or deleted
- The icon next to each file tells you what happened: `M` (modified), `U` (untracked/new), `D` (deleted)

**Basic workflow — no Git commands needed:**
1. Click `+` next to any file to stage it
2. Type your commit message at the top
3. Click the checkmark to commit
4. Use the `...` menu for push, pull, branching, and everything else

For anything more involved, VS Code will show you what each command does before running it — much safer than guessing from memory.

---

## 26. GitLens Extension

**Extension:** [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)

GitLens makes VS Code's Git features significantly more powerful. The standout feature: hover over any line of code and it shows you who last changed it, when, and what the commit message said. Incredibly useful when you're reading unfamiliar code and wondering *why is this done this way?*

Other highlights:
- Full file history — every change ever made to a file
- Visual comparison between any two branches
- Side-by-side diffs that are easy to read

---

## 27. Remote Repositories

**Extension:** [GitHub Repositories](https://marketplace.visualstudio.com/items?itemName=GitHub.remotehub)

Normally, to look at someone else's code on GitHub you have to clone the whole repo — download it, set it up, then clean it up when you're done. This extension skips all of that.

**To use it:**
1. Install the extension
2. Click the remote icon in the bottom-left corner of VS Code
3. Select "Open Remote Repository"
4. Search for any GitHub repo and open it instantly

You can browse code, make edits, create branches, and submit pull requests — without cloning a thing.

---

## 28. Remote SSH & Dev Containers

**Extensions:**
- [Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
- [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

**Remote SSH** lets you connect VS Code to a remote server and edit files there as if they were local. The editor looks and feels exactly the same — it's just running on a different machine.

**Dev Containers** solves the classic "it works on my machine" problem. You define your development environment in a single file, and VS Code spins up a Docker container with everything pre-installed. Every developer on your team works in the exact same environment.

A minimal `.devcontainer/devcontainer.json` looks like this:

```json
{
  "name": "Node.js Dev",
  "image": "mcr.microsoft.com/devcontainers/node:20",
  "postCreateCommand": "npm install"
}
```

Command Palette → `Dev Containers: Reopen in Container` — and you're inside.

---

## 29. Custom Snippets

A snippet is a piece of code you've saved so you can insert it by typing a short keyword and pressing `Tab`. Perfect for boilerplate you write constantly.

**How to create one:**

1. Command Palette → `Snippets: Configure User Snippets`
2. Choose a language (e.g. `javascript`)
3. Add your snippet:

```json
{
  "React Component": {
    "prefix": "rfc",
    "body": [
      "export default function ${1:ComponentName}() {",
      "  return (",
      "    <div>",
      "      $0",
      "    </div>",
      "  );",
      "}"
    ],
    "description": "React functional component"
  }
}
```

Type `rfc` in any `.jsx` file, press `Tab`, and the full component appears with your cursor ready to type the name.

**Snippet syntax at a glance:**
- `$1`, `$2` — cursor stops (press `Tab` to move between them)
- `${1:placeholder}` — a stop with default text you can overwrite
- `$0` — where the cursor ends up at the very end

---

## 30. Community Snippets

Before building your own snippets, check the Extensions panel first. If you're using a popular framework, someone has almost certainly already built a snippet pack for it.

Search `Ctrl+Shift+X` for your framework + "snippets":

| Extension | For |
|-----------|-----|
| [ES7+ React/Redux Snippets](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets) | React |
| [Vue VSCode Snippets](https://marketplace.visualstudio.com/items?itemName=sdras.vue-vscode-snippets) | Vue.js |
| [Python Snippets](https://marketplace.visualstudio.com/items?itemName=frhtylcn.pythonsnippets) | Python |

---

## 31. Auto-create Nested Directories

When creating a new file in the Explorer, you can type a full path — including folders that don't exist yet — and VS Code will create everything for you.

In the Explorer → New File, type:
```
components/ui/buttons/IconButton.tsx
```

VS Code creates the `components/`, `ui/`, and `buttons/` folders automatically, then places `IconButton.tsx` inside. No need to make directories first.

---

## 32. Paste JSON as Code

**Extension:** [Paste JSON as Code](https://marketplace.visualstudio.com/items?itemName=quicktype.quicktype)

If you work with TypeScript, you've probably had to write types for API responses by hand. This extension does it automatically.

1. Copy a JSON response (from Postman, your browser dev tools, anywhere):
```json
{
  "id": 42,
  "username": "alice",
  "email": "alice@example.com",
  "isAdmin": false
}
```

2. In a TypeScript file → Command Palette → `Paste JSON as Code`
3. Give your type a name and get this instantly:

```ts
export interface User {
  id:       number;
  username: string;
  email:    string;
  isAdmin:  boolean;
}
```

In large projects with complex API responses, this can save hours.

---

## 33. Rename Symbol Safely

**Shortcut:** `F2` — or right-click → `Rename Symbol`

One of the most common beginner mistakes is using Find & Replace (`Ctrl+H`) to rename a variable across the codebase. The problem is that Find & Replace is just text matching — it'll happily rename things inside comments, strings, or other variables that happen to share the same word.

Rename Symbol is smarter. It understands your code and only renames the exact thing you mean — across every file in the project.

```js
// You want to rename "fetchUser" to "getUser"
// Click on fetchUser → F2 → type "getUser" → Enter

// Renames: every call to fetchUser() in your actual code
// Skips:   the word "fetchUser" inside comments or strings
```

Simple rule to remember: **use `F2` for renaming code, use `Ctrl+H` for replacing text.**

---

## Shortcuts Cheat Sheet

| Shortcut (Win/Linux) | Shortcut (Mac) | What it does |
|----------------------|----------------|--------------|
| `Ctrl+P` | `Cmd+P` | Open file / Command Palette |
| `Ctrl+Shift+P` or `F1` | `Cmd+Shift+P` or `F1` | Run a command |
| `Ctrl+B` | `Cmd+B` | Toggle sidebar |
| `Ctrl+0` | `Cmd+0` | Focus sidebar |
| `Ctrl+1` | `Cmd+1` | Focus editor |
| `Ctrl+G` | `Ctrl+G` | Go to line number |
| `Ctrl+D` | `Cmd+D` | Select word / next match |
| `Ctrl+Shift+L` | `Cmd+Shift+L` | Select all occurrences |
| `Shift+Alt+→` | `Shift+Ctrl+Cmd+→` | Expand selection |
| `Shift+Alt+←` | `Shift+Ctrl+Cmd+←` | Shrink selection |
| `Ctrl+/` | `Cmd+/` | Toggle comment |
| `Ctrl+X` (no selection) | `Cmd+X` | Cut entire line |
| `Alt+↑/↓` | `Option+↑/↓` | Move line up/down |
| `Alt+Shift+↑/↓` | `Option+Shift+↑/↓` | Copy line up/down |
| `Ctrl+Shift+K` | `Cmd+Shift+K` | Delete line |
| `` Ctrl+` `` or `Ctrl+J` | `` Ctrl+` `` | Open terminal |
| `Ctrl+K` | `Cmd+K` | Clear terminal |
| `F2` | `F2` | Rename symbol |
| `Ctrl+Shift+X` | `Cmd+Shift+X` | Open extensions |
| `Alt+1/2/3` | `Cmd+1/2/3` | Switch editor tab |
| `Ctrl+W` | `Cmd+W` | Close current tab |

---

## Suggested Learning Path

Don't rush this. Slow and steady is how shortcuts actually stick.

**Week 1 — Start here**
- [ ] Install the VS Code CLI and open a project with `code .`
- [ ] Use `Ctrl+P` to open files (stop clicking the sidebar)
- [ ] Use `Ctrl+/` to comment and uncomment code
- [ ] Use `Alt+↑/↓` to move lines instead of cutting and pasting

**Week 2 — Get faster**
- [ ] Use `Ctrl+G` to jump to line numbers
- [ ] Use `@` in the palette to navigate within a file
- [ ] Practice `Ctrl+D` to select and edit multiple matches
- [ ] Try Expand/Shrink selection (`Shift+Alt+→`)

**Week 3 — Extend VS Code**
- [ ] Install Auto Rename Tag and Better Comments
- [ ] Try GitLens on a project with some history
- [ ] Create your first custom snippet

**Week 4 — Level up**
- [ ] Set up a Tasks file for your most-used commands
- [ ] Try Emmet Balance Outward + Wrap with Abbreviation on an HTML file
- [ ] Use `F2` (Rename Symbol) instead of Find & Replace next time you rename something

---

## Contributing

Got a tip that helped you? Open a pull request. Follow the structure of an existing tip and keep it beginner-friendly.

---

## License

MIT — free to use, share, and learn from.

---

*Tips sourced from [Fireship.io](https://fireship.io), [Rob Conery](https://robconery.com), and the VS Code community.*
