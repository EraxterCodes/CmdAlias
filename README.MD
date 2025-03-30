# CmdAlias
CmdAlias is a World of Warcraft addon that allows players to create custom chat command aliases, similar to the alias system in Linux. This makes it easier to shorten long commands or create personal shortcuts for frequently used commands.

## Features
- Create custom aliases for any chat command.
- Use aliases just like regular slash commands.
- Supports removing specific aliases.
- Reset all aliases easily.
- Persistent storage: aliases are saved between sessions.

## Installation
1. Download the latest version from [GitHub](https://github.com/EraxterCodes/CmdAlias).
2. Extract the `CmdAlias` folder into your WoW AddOns directory:
   ```
   World of Warcraft\_retail_\Interface\AddOns\CmdAlias
   ```
3. Restart WoW or reload your UI (`/reload`).

## Usage
### Create an Alias
```
/alias <shortcut> <command>
```
Example:
```
/alias rc /readycheck
```
Now, typing `/rc` will execute `/readycheck`.

### Remove an Alias
```
/alias <shortcut>
```
Example:
```
/alias rc
```
This will remove the alias for `/rc`.

### Reset All Aliases
```
/alias reset
```
This will delete all saved aliases.

## Contributing
Feel free to submit issues or pull requests on [GitHub](https://github.com/EraxterCodes/CmdAlias).

## License
This project is licensed under the MIT License.

