# Artwork is not in this repository

This repo contains the code, project structure and asset *catalogue* for
PicoProjectAAC, but not the page imagery itself — about 528 MB of it.

## Why

The images are third-party: gallery scans (Mona Lisa, The Kiss, The Scream,
Girl with a Pearl Earring, The Great Wave, Nighthawks), atlas and transit maps
including the TfL standard tube map, magazine covers, and football club
photography. None of it is ours to redistribute. One file, `mona-lisa@3x.jpg`,
is 69 MB on its own — past the point where GitHub starts complaining.

## What that means when you clone

Every `Contents.json` **is** tracked, so Xcode still shows all the imagesets;
they just render empty. The app builds, but pages appear blank until the
artwork is restored.

## Restoring it

The full assets live in the local working copy at
`~/Documents/1-Projects/PicoProjectAAC`, which is where they should stay. To
put them back into a fresh clone, copy these directories across:

    PicoProjectAAC/Assets.xcassets/Arts/
    PicoProjectAAC/Assets.xcassets/Continents/
    PicoProjectAAC/Assets.xcassets/Local Maps/
    PicoProjectAAC/Assets.xcassets/Sports/
    PicoProjectAAC/Assets.xcassets/Pages/

## Kept in the repo

`AppIcon`, `AccentColor`, the `Aphasia` imageset, `Thumbnails` and
`angel-signage` — original material, ~750 KB in total.

## If you ever want the images versioned

Git LFS is the right tool, not plain git:

    git lfs install
    git lfs track "*.jpg" "*.jpeg"

Be aware LFS storage is quota'd on free accounts, and 528 MB would consume a
meaningful slice of it.
