# Moxon Rectangle Antenna Theory

The Moxon rectangle is a compact, directional, two-element antenna invented by Les Moxon, G6XN. It behaves like a folded two-element Yagi: one element is driven from the feed line, and the second element is a parasitic reflector. The element ends are bent toward each other, so the antenna occupies less space than a straight two-element Yagi while retaining useful gain, a broad forward lobe, and a strong front-to-back ratio.

This kit is aimed mainly at the 70 cm and 2 m amateur radio bands. At those frequencies the dimensions are physically manageable, but small construction errors are also a larger fraction of a wavelength. That makes geometry, conductor diameter, feed layout, and mounting details important.

## Geometry

A conventional Moxon rectangle is described with five practical dimensions:

| Symbol | Meaning |
| --- | --- |
| `A` | Long horizontal span of the driven element side |
| `B` | Folded driven-element tail length at each end |
| `C` | Gap between the driven tail and reflector tail |
| `D` | Folded reflector tail length at each end |
| `E` | Spacing between the driven-element side and reflector side |

The driven element is split at the middle for the feed point. The reflector is continuous and is not electrically connected to the feed line. The close end coupling through the `C` gaps is what makes the Moxon different from a simple bent dipole and reflector pair.

## Build-kit H-frame

This kit uses two T-pieces to hold the antenna in an H-shaped frame. Four equal outer pipes support the driven-element and reflector wires, and one center pipe sets the distance between the driven element and reflector.

The notebook derives these mechanical pipe dimensions from the electrical Moxon dimensions:

```text
outer_pipe_length = A / 2 - radiator_pipe_offset
center_pipe_length = E - center_pipe_offset
```

The offsets account for socket depth, printed part geometry, wire attachment position, or any other mechanical distance between the pipe end and the actual electrical wire position. They are defined globally in the notebook as `RADIATOR_PIPE_OFFSET_MM` and `CENTER_PIPE_OFFSET_MM`, so a kit-specific value can be set once and reused for every frequency.

## Why the Moxon works

The driven element produces the primary radiation. The reflector is placed behind it and is slightly longer in effective electrical length. Because the reflector is parasitic, current is induced in it by the field from the driven element. The induced current has a phase relationship that reinforces radiation in the forward direction and cancels part of the radiation toward the rear.

In a straight two-element Yagi, the reflector is normally behind the driven element with an open air spacing. In the Moxon, the ends of both elements are folded toward each other. This changes the mutual coupling. The folded ends add capacitance and make the antenna shorter across the boom direction. The result is a compact rectangle with impedance often close enough to 50 ohms for direct coax feed when dimensions are chosen well.

## Electrical length and wavelength

The free-space wavelength is:

```text
lambda = c / f
```

where `c` is the speed of light and `f` is the design frequency. For quick radio work:

```text
lambda_m = 299.792458 / frequency_MHz
```

Real conductors do not behave exactly like infinitely thin wires in free space. Conductor diameter, insulation, bends, nearby plastic or metal, and the feed connection all shift resonance. A velocity factor can be used as a simple build correction, but final tuning should still be done by measurement.

## Feed-point impedance

A well-designed Moxon rectangle often lands near 50 ohms at resonance. This is one of the reasons it is popular for portable and kit antennas. The feed point is at the center of the driven element. A current choke or common-mode choke at the feed point is strongly recommended, especially for VHF/UHF, because coax shield current can distort the pattern and alter the match.

The exact feed impedance depends on:

| Factor | Effect |
| --- | --- |
| Driven/reflector spacing `E` | Strongly affects impedance and pattern |
| End gap `C` | Strongly affects coupling and front-to-back ratio |
| Conductor diameter | Changes electrical length and bandwidth |
| Feed gap and feed hardware | Adds capacitance and inductance at the driven element center |
| Mounting structure | Nearby metal or lossy material can detune the antenna |

## Pattern, gain, and front-to-back ratio

The forward gain of a practical Moxon is commonly in the same class as a small two-element beam. The main attraction is not maximum gain; it is the combination of compact size, broad pattern, useful gain, and high rear rejection. A carefully built Moxon can have a very good front-to-back ratio, which is useful when reducing interference or favoring one direction.

For satellite, portable, fox hunting, or local VHF/UHF work, the wider forward lobe can be more forgiving than a higher-gain narrow Yagi. For weak-signal terrestrial work, the lower boom length and compact frame are useful, but a longer Yagi will usually provide more gain.

## Polarization

The drawing in the notebook is a plan-view geometry. The polarization depends on how the finished rectangle is oriented. If the driven element is horizontal, the antenna is horizontally polarized. If the driven element is vertical, it is vertically polarized. Match the polarization to the intended use: FM repeaters are commonly vertical, while weak-signal SSB/CW operation is commonly horizontal.

## Tuning workflow

Use the notebook dimensions as a starting point, not as final guaranteed dimensions.

1. Choose the exact center frequency for the intended operating range.
2. Build the antenna symmetrically and keep the end gaps repeatable.
3. Use a short, mechanically stable feed connection at the driven element center.
4. Add a choke at the feed point.
5. Measure SWR or return loss in the intended installed orientation.
6. If resonance is low in frequency, shorten the driven element slightly.
7. If resonance is high in frequency, lengthen the driven element slightly.
8. Adjust the end gaps only carefully, because they affect both match and pattern.

## Limitations of the notebook calculator

The notebook uses practical proportional dimensions calibrated against typical online Moxon calculator output for 2 m and 70 cm examples. It is intended for visualization, kit documentation, and first-cut mechanical planning. For a production antenna or a critical build, validate the dimensions with a NEC model, a known calculator such as MoxGen/W4RNL-derived tools, and real VNA measurements.
