## GH Actions Playground

This repository is my playground for GitHub Actions

Action | What it does | Use case
--- | --- | ---
[Add PR comment](https://github.com/MarcinVaadin/gh-actions-demos/blob/main/.github/workflows/pr-comment.yml) | adds PR comment if some files exist | inform about failing screenshot comparison tests
[Skip Formatter](https://github.com/MarcinVaadin/gh-actions-demos/blob/main/.github/workflows/formatter.yml) | checks PR commit message for presence of some string and skips action if it's present | skipping build steps using `[skip formatter]` and similar
[ChromeDriver playground](https://github.com/MarcinVaadin/gh-actions-demos/blob/main/.github/workflows/chrome-driver.yml) | setting up chromedriver | running ITs
