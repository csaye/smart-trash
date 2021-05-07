# Smart Trash

A command-line trash system.

## Commands

### trash

Moves given item to `~/.Trash`.

```
trash <path>
```

### empty

Empties trash, prompting the user to verify the deletion of each item.

Use `--now` to delete without prompting.

```
empty [--now]
```

## Usage

Copy and paste the functions from [.bash_profile](.bash_profile) into a file named `.bash_profile` within your home directory.

The functions should be registered as aliases and be ready to use.

If at any point you would like to remove the functions, simply remove them from `.bash_profile`.
