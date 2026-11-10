<p align="center"><img src="docs/banner.png" alt="Jellyfin plugins by theqkash" width="100%"></p>

<p align="center">
  <img alt="Jellyfin 12" src="https://img.shields.io/badge/Jellyfin-12-00a4dc?logo=jellyfin&logoColor=white">
  <a href="https://discord.gg/CwH8XKRnpz"><img alt="Discord" src="https://img.shields.io/badge/Discord-join-5865F2?logo=discord&logoColor=white"></a>
  <a href="https://ko-fi.com/theqkash"><img alt="Ko-fi" src="https://img.shields.io/badge/Ko--fi-support-FF5E5B?logo=kofi&logoColor=white"></a>
</p>

<p align="center"><b>One plugin repository for Jellyfin 12. Add it once, get every plugin and every update.</b></p>

## Installation

1. In Jellyfin open **Dashboard > Plugins > Repositories** and add:

   ```
   https://raw.githubusercontent.com/theqkash/jellyfin-plugins/main/manifest.json
   ```

2. Open the **Catalog**, install the plugins you want, restart Jellyfin.

## Plugins

<table>
<tr>
<td width="96" align="center"><img src="docs/laurels.svg" width="80" alt=""></td>
<td>

### [Laurels](https://github.com/theqkash/jellyfin-plugin-laurels)

Ratings from IMDb, Rotten Tomatoes, Metacritic, Letterboxd, TMDb, Trakt, MyAnimeList and Filmweb, and film awards from the Oscars to Cannes, shown on detail pages, in home screen rows and in an awards library. English and Polish.

</td>
</tr>
<tr>
<td width="96" align="center"><img src="docs/terebi.svg" width="80" alt=""></td>
<td>

### [Terebi](https://github.com/theqkash/jellyfin-plugin-terebi)

Xtream and M3U aggregator for Live TV: the same channel from many sources becomes one, with automatic failover, health checks, XMLTV guide data, logos, categories and number blocks. Ships no channels; bring your own sources.

</td>
</tr>
</table>

Both plugins work best with [File Transformation](https://github.com/IAmParadox27/jellyfin-plugin-file-transformation), and Laurels also with [Home Screen Sections](https://github.com/IAmParadox27/jellyfin-plugin-home-sections) (repository `https://www.iamparadox.dev/jellyfin/plugins/manifest.json`).

## How it works

Each plugin is developed and released in its own repository. A scheduled workflow here merges their manifests into `manifest.json` every hour, so a new release reaches the catalog within an hour. Issues and pull requests belong in the plugin repositories.

## Community and support

Questions and ideas are welcome on [Discord](https://discord.gg/CwH8XKRnpz). If the plugins save you time, you can support the work on [Ko-fi](https://ko-fi.com/theqkash).

## License

MIT
