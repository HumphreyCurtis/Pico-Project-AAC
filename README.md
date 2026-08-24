# Pico-project AAC

> **Research archive:** this prototype was created for a 2024 study and is no longer actively maintained. It is preserved to document the design and support research reuse; it is not a production AAC system or a clinical device.

![Pico-project AAC interface and hardware overview](https://humphreycurtis.github.io/images/looking-past-screens/pico-project-aac.webp)

Pico-project AAC explores how visual augmentative and alternative communication (AAC) can move from a private phone or tablet into a shared space. The SwiftUI app lets someone choose and enlarge maps, photographs, artworks and requests on an iPhone or iPad, then display them through a small pico-projector during conversation.

The prototype was co-designed and evaluated with people with aphasia as part of the **Screenless AAC** research programme at King's College London.

## What the prototype includes

- A browsable library of visual communication material
- Full-screen images with pinch-to-zoom, drag and reset controls
- A thumbnail drawer for moving between related pages
- An interface designed to be mirrored to a MagSafe-mounted pico-projector
- SwiftUI source for iPhone and iPad

The projector uses the device's normal display output; this repository does not contain a custom hardware driver. The included watchOS target is an unused Xcode template and was not part of the evaluated prototype.

## Run locally

1. Clone the repository.
2. Read [ASSETS.md](ASSETS.md) before opening the project. Most study imagery is deliberately excluded because it came from third parties and cannot be redistributed here.
3. Open `PicoProjectAAC.xcodeproj` in Xcode.
4. Select the `PicoProjectAAC` scheme and an iPhone or iPad running iOS/iPadOS 17.4 or later.
5. Configure your own signing team if you want to run on a physical device.

The project has no third-party package dependencies. It builds without the excluded artwork, but the corresponding image views will be blank until suitable assets are supplied.

## Repository map

```text
PicoProjectAAC/
├── Data/                 Page definitions
├── Model/                Page model
├── Screen/               Menu and image-viewing screens
├── View/                 Reusable controls and information panel
└── Assets.xcassets/      Included assets and placeholders
```

## Research

- [Screenless AAC portfolio case study](https://humphreycurtis.github.io/html/portfolio/looking-past-screens.html)
- [Looking Past Screens: Exploring Mixed Reality and Discreet AAC Devices](https://doi.org/10.1145/3663548.3675655) — ASSETS 2024
- [Research video](https://www.youtube.com/watch?v=Sz0Qejqobho&t=10s)

If you use the prototype in academic work, please cite the accompanying paper; structured citation metadata is available in [CITATION.cff](CITATION.cff).

## Limitations

This is a study prototype rather than a deployable AAC product. It does not include onboarding, content authoring, cloud sync, analytics or clinical validation. No participant data is included in the repository.

## Licence

The source code is available under the [MIT Licence](LICENSE). That licence does not cover third-party images or other material described in [ASSETS.md](ASSETS.md).
