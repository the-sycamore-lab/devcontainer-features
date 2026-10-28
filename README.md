# Dev Container Features

A collection of [Dev Container Features](https://containers.dev/implementors/features/) published to GHCR.

## Features

| Feature | Description |
| --- | --- |
| [android](src/android) | Android SDK (platform-tools, build-tools 35.0.0, android-35 platform) |
| [chrome](src/chrome) | Google Chrome (stable) and common fonts for headless browser use |
| [google-cloud](src/google-cloud) | Google Cloud CLI (`gcloud`) |
| [tmux](src/tmux) | tmux |

## Usage

Add features to your `devcontainer.json`:

```jsonc
{
  "features": {
    "ghcr.io/the-sycamore-lab/devcontainer-features/chrome:1": {},
    "ghcr.io/the-sycamore-lab/devcontainer-features/tmux:1": {}
  }
}
```

## Publishing

Features are published to GHCR automatically by the [release workflow](.github/workflows/release.yaml) on pushes to `main` that touch `src/`. Bump the `version` in a feature's `devcontainer-feature.json` to release a new version.
