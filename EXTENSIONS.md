# Recommended VS Code Extensions

A curated list of all extensions mentioned in this guide, plus a few bonus picks worth knowing about.

---

## From This Guide

| Extension | Install ID | What it does |
|-----------|-----------|--------------|
| [Quokka.js](https://marketplace.visualstudio.com/items?itemName=WallabyJs.quokka-vscode) | `WallabyJs.quokka-vscode` | Runs JS/TS in real time and shows output inline |
| [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag) | `formulahendry.auto-rename-tag` | Renames the closing HTML tag when you edit the opening one |
| [Add JSDoc Comments](https://marketplace.visualstudio.com/items?itemName=stevencl.addDocComments) | `stevencl.addDocComments` | Auto-generates JSDoc comment blocks for functions |
| [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments) | `aaron-bond.better-comments` | Color-codes comments by type (`!`, `?`, `TODO`, `*`) |
| [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) | `eamodio.gitlens` | Inline Git blame, file history, branch comparisons |
| [GitHub Repositories](https://marketplace.visualstudio.com/items?itemName=GitHub.remotehub) | `GitHub.remotehub` | Browse and edit GitHub repos without cloning |
| [Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh) | `ms-vscode-remote.remote-ssh` | Edit files on a remote server from VS Code |
| [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) | `ms-vscode-remote.remote-containers` | Use a Docker container as your dev environment |
| [Paste JSON as Code](https://marketplace.visualstudio.com/items?itemName=quicktype.quicktype) | `quicktype.quicktype` | Converts a JSON object into TypeScript types |

---

## Bonus Picks

These aren't in the guide but are worth installing on any project:

| Extension | Install ID | What it does |
|-----------|-----------|--------------|
| [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) | `esbenp.prettier-vscode` | Auto-formats your code on save |
| [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint) | `dbaeumer.vscode-eslint` | Highlights JS/TS errors and style issues as you type |
| [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens) | `usernamehw.errorlens` | Shows errors and warnings inline, right on the offending line |
| [Path IntelliSense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense) | `christian-kohler.path-intellisense` | Autocompletes file paths in import statements |
| [Todo Tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree) | `Gruntfuggly.todo-tree` | Collects all TODO/FIXME comments into a sidebar panel |
| [Import Cost](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost) | `wix.vscode-import-cost` | Shows the bundle size of each import right in the editor |
| [Peacock](https://marketplace.visualstudio.com/items?itemName=johnpapa.vscode-peacock) | `johnpapa.vscode-peacock` | Colours each project's VS Code window differently — great when juggling multiple projects |

---

## Language & Framework Specific

| Extension | Install ID | For |
|-----------|-----------|-----|
| [ES7+ React/Redux Snippets](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets) | `dsznajder.es7-react-js-snippets` | React and Redux boilerplate snippets |
| [Vue VSCode Snippets](https://marketplace.visualstudio.com/items?itemName=sdras.vue-vscode-snippets) | `sdras.vue-vscode-snippets` | Vue.js snippets |
| [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance) | `ms-python.vscode-pylance` | Full Python language support |
| [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss) | `bradlc.vscode-tailwindcss` | Autocomplete for Tailwind utility classes |
| [Thunder Client](https://marketplace.visualstudio.com/items?itemName=rangav.vscode-thunder-client) | `rangav.vscode-thunder-client` | REST API client built into VS Code (like Postman, but lighter) |

---

## How to Install

**From the Extensions panel:**
1. Press `Ctrl+Shift+X`
2. Search for the extension name
3. Click Install

**From the command line** (useful for scripting a new machine setup):
```bash
code --install-extension esbenp.prettier-vscode
code --install-extension eamodio.gitlens
code --install-extension aaron-bond.better-comments
```

**Workspace recommendations** — add a `.vscode/extensions.json` file to your project to suggest extensions to teammates. When they open the project, VS Code will prompt them to install:

```json
{
  "recommendations": [
    "esbenp.prettier-vscode",
    "dbaeumer.vscode-eslint",
    "eamodio.gitlens",
    "aaron-bond.better-comments",
    "formulahendry.auto-rename-tag"
  ]
}
```
