# Aux for Vanilla WoW

Aux is a full auction-house interface for the World of Warcraft 1.12.1 client. This maintained build preserves the familiar Aux workflow while providing a cleaner Classic-era presentation.

## Supported client

- Vanilla WoW 1.12.1 (`Interface: 11200`)
- This repository currently contains the Classic/Vanilla build only.

## Features

- Complete replacement for the default auction-house workflow
- Multi-page searches and sortable results
- Recent and favorite searches
- Advanced filters and filter builder
- Fast buying, bidding, cancelling, and posting tools
- Per-item posting preferences
- Auction history and market-value calculations
- Vendor and disenchant information in tooltips
- Access to the original Blizzard auction interface when needed

## Installation

1. Download the repository or the latest packaged release.
2. Copy the inner `aux-addon` folder into `Interface/AddOns`.
3. Confirm that the final path is `Interface/AddOns/aux-addon/aux-addon.toc`.
4. Restart the game or reload the UI.

## Usage

Visit an auction house to open Aux. Enter `/aux` in chat to list its settings and commands. Detailed search syntax and controls are documented in [`aux-addon/README.md`](aux-addon/README.md).

## Notes

This build targets the original 1.12.1 auction-house API. It is not presented as a TBC or WotLK port.

## Credits

Aux was originally created by shirsig. The included source retains its original author metadata and historical documentation. This repository publishes the maintained Vanilla-compatible build without removing upstream credit.
