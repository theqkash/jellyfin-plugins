# Jellyfin plugins by theqkash

One plugin repository for Jellyfin 12 with these plugins:

| Plugin | What it does | Source |
| --- | --- | --- |
| **Laurels** | Ratings from many services (including Filmweb) and film awards on detail pages, home sections and an awards library. | [jellyfin-plugin-laurels](https://github.com/theqkash/jellyfin-plugin-laurels) |
| **Terebi** | Xtream and M3U aggregator for Live TV: merged channels, failover, health checks, EPG, categories. | [jellyfin-plugin-terebi](https://github.com/theqkash/jellyfin-plugin-terebi) |

## Installation

1. In Jellyfin open Dashboard > Plugins > Repositories and add:

   ```
   https://raw.githubusercontent.com/theqkash/jellyfin-plugins/main/manifest.json
   ```

2. Open the Catalog, install the plugins you want, restart Jellyfin.

## How it works

Each plugin is developed and released in its own repository. A scheduled workflow here merges their manifests into `manifest.json` every hour, so a new release shows up in the catalog within an hour. Issues and pull requests belong in the plugin repositories.

## License

MIT
