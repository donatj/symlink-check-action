# symlink-check-action

This simple action checks that all symlinks point to a valid file.

## Example

<p align="center">
<img width="682" alt="Symlink Error Exaple" src="https://github.com/donatj/symlink-check-action/assets/133747/078c5dd6-7395-4786-ba3b-67c1220ab94d">
</p>

## Usage

```yaml
name: Validate Symlinks
on:
  - pull_request
  - push

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - name: Test Project Symlinks
        uses: donatj/symlink-check-action@v1
        with:
          directory: . # The directory to check for symlinks, optional, defaults to .
```

## Inputs

- **directory** _(Optional)_ - The directory to check for symlinks, optional, defaults to `.`
