# Artwork is not in this repository

This repository contains the code, project structure and asset *catalogue* for
Pico-project AAC, but not roughly 500 MB of page imagery used in the study.

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

## Supplying replacement imagery

To recreate the image library, add appropriately licensed files to the
following asset-catalogue directories. The expected filenames are recorded in
each imageset's `Contents.json` file.

    PicoProjectAAC/Assets.xcassets/Arts/
    PicoProjectAAC/Assets.xcassets/Continents/
    PicoProjectAAC/Assets.xcassets/Local Maps/
    PicoProjectAAC/Assets.xcassets/Sports/
    PicoProjectAAC/Assets.xcassets/Pages/

## Kept in the repo

`AppIcon`, `AccentColor`, the `Aphasia` imageset, `Thumbnails` and
`angel-signage` — original material, ~750 KB in total.

## If you add redistributable images

Git LFS is the right tool, not plain git:

    git lfs install
    git lfs track "*.jpg" "*.jpeg"

meaningful slice of it.
Be aware that LFS storage is quota-limited, and a collection of this size would
consume a meaningful amount of it.
meaningful slice of it.
