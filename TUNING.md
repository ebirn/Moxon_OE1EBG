# Moxon Antenna Tuning Guide

This guide starts after the two printed T-pieces are available, the H-frame pipes are on hand, and enough wire is available for the driven element and reflector. It assumes a NanoVNA, RigExpert Stick, or similar 50 ohm antenna analyzer is available.

The goal is not only a low SWR. A Moxon rectangle is a coupled two-element antenna, so the final adjustment must preserve the geometry that gives the antenna its forward gain and rear null.

## Geometry Terms

Use the same dimension names as the calculator and theory note:

![Moxon starter dimension diagram](img/Moxon_dimensions_2m.png)

The image shows the plan-view antenna geometry for a 145 MHz starter build. The exact values will change with frequency, conductor diameter, velocity factor, and final tuning, but the letters keep the same meaning.

| Symbol | Meaning | Tuning role |
| --- | --- | --- |
| `A` | Horizontal span of the long driven side and the long reflector side | The left-to-right rectangle width. In the image, this is the purple `A span` arrow across the top. |
| `B` | Driven-element folded tail length at each end | The short vertical driven tails that turn down from the top driven element. In the image, this is `B tail`. |
| `C` | End gap between the driven tail and reflector tail | The small open space between the two facing wire ends on each side. In the image, this is `C gap`. |
| `D` | Reflector folded tail length at each end | The short vertical reflector tails that turn up from the bottom reflector. In the image, this is `D tail`. |
| `E` | Spacing between the driven side and reflector side | The front-to-back spacing between the top driven element and bottom reflector. In the image, this is `E spacing`. |

The blue dotted lines in the image are the H-frame pipe cuts for this kit, not electrical Moxon dimensions. They are derived from `A` and `E` after subtracting the printed-part offsets. The green dashed diagonal is a useful mechanical check that the rectangle is square and repeatable.

The driven element is split at the feed point. The reflector is continuous. The two `C` gaps must be equal, and the left and right halves must stay symmetrical.

## What To Optimize

Tune in this order:

1. Mechanical symmetry and repeatable dimensions.
2. Feed-point resonance at the intended center frequency.
3. Feed-point impedance near 50 ohms without using coax length as a hidden matching element.
4. Stable SWR with the feed line moved by hand.
5. Best practical front-to-back ratio in the final mounting orientation.

For FM repeater use, choose a center frequency in the part of the band you actually use. For weak-signal SSB/CW or satellites, tune for that operating segment, not for the middle of the whole amateur band.

## Tools And Setup

Use these items before cutting anything permanently:

| Item | Use |
| --- | --- |
| NanoVNA, RigExpert Stick, or similar analyzer | Measure S11, SWR, return loss, impedance, and resonant frequency |
| Short 50 ohm coax jumper | Connect the analyzer to the antenna feed point |
| Open/short/load calibration standards | Calibrate the analyzer at the end of the measurement cable |
| 50 ohm dummy load | Quick sanity check for the analyzer and coax |
| Ruler or calipers | Measure `C`, `E`, and wire lengths repeatably |
| Masking tape or heat-shrink markers | Mark the as-built wire positions before trimming |
| Small cable ties or clamps | Temporarily hold wire tails during tuning |
| Ferrite choke or several ferrite beads | Suppress common-mode current on the feed line |
| Low-power transmitter or receiver | Optional field check of front-to-back behavior |

## Analyzer Preparation

1. Set the analyzer sweep around the target band, not across a very wide range.
2. For 2 m, a useful first sweep is `140 MHz` to `150 MHz`.
3. For 70 cm, a useful first sweep is `420 MHz` to `450 MHz`, or narrower if the target segment is known.
4. Calibrate open, short, and load at the end of the coax jumper that will connect to the antenna.
5. After calibration, connect the 50 ohm load at the same point. It should read close to `SWR 1.0:1` and about `50 + j0 ohms` across the narrow sweep.
6. If the load reading is poor, fix the calibration, adapters, or cable before measuring the antenna.

Do not calibrate at the analyzer port and then add a long cable unless the analyzer supports port extension and you know how to use it. At VHF and UHF, even a short cable transforms impedance if it is not calibrated out.

## First Mechanical Build

1. Choose the exact center frequency.
2. Use the calculator to get `A`, `B`, `C`, `D`, and `E` for the actual wire diameter and insulation state.
3. If the wire is insulated, expect the real antenna to be electrically longer than a bare-wire calculation.
4. Assemble the two T-pieces and pipes into the H-frame.
5. Set the center pipe so the driven side and reflector side are separated by `E` at the wire positions, not just at the plastic or pipe centerline.
6. Cut the driven wire slightly long, with enough spare at each end to form the `B` tails and allow small trimming.
7. Cut the reflector wire slightly long, with enough spare at each end to form the `D` tails and allow small trimming.
8. Install the reflector as one continuous wire.
9. Install the driven element as two equal halves with a small feed gap at the center.
10. Make the feed-point leads short and symmetrical.
11. Set both `C` gaps to the calculator value.
12. Make the left-side `C` gap and right-side `C` gap as equal as possible.
13. Add a 1:1 current choke at the feed point or immediately below it.
14. Route the feed line away from the driven element at right angles for at least a short distance before it turns toward the operator or mast.

The first build should be adjustable. Do not solder, glue, or permanently crimp the final wire tails until the antenna has been measured in the intended orientation.

## Measurement Position

Measure the antenna in the same polarization and as close as practical to the intended operating setup.

1. Keep the antenna away from metal benches, cars, railings, gutters, tripods, and the operator's body.
2. For 2 m, try to keep people and metal at least `1 m` away during measurements.
3. For 70 cm, try to keep people and metal at least `0.5 m` away during measurements.
4. Hold or mount the antenna so the frame is not touching conductive objects.
5. Keep the analyzer behind or below the antenna, not inside the rectangle.
6. Do not let the coax run parallel along the driven element or reflector.

The exact height above ground changes the reading. That is normal. Tune at the height and mounting style that will actually be used when possible.

## First Sweep

Record these values before changing anything:

| Value | What to record |
| --- | --- |
| `f_min_swr` | Frequency where SWR is lowest |
| `SWR_min` | Lowest SWR value |
| `R` at target frequency | Resistive part of impedance |
| `X` at target frequency | Reactive part of impedance |
| `SWR` at target frequency | Match at the chosen operating frequency |
| `C_left` and `C_right` | Actual end gaps |
| `E` | Actual driven-to-reflector spacing |

On a NanoVNA, use the SWR trace, return-loss trace, and Smith chart together. The SWR dip tells you where the match is best, but the Smith chart shows whether the feed point is too capacitive or inductive and whether it passes near `50 + j0 ohms`.

## Main Tuning Rule

Tune the driven element first.

| Symptom | Likely cause | First correction |
| --- | --- | --- |
| SWR dip is below the target frequency | Driven element is electrically too long | Shorten both driven halves equally |
| SWR dip is above the target frequency | Driven element is electrically too short | Lengthen both driven halves equally if possible |
| SWR dip is near target but minimum SWR is not good | Coupling or feed impedance issue | Adjust `C`, then check `E` only if needed |
| Reading changes when the coax is moved | Common-mode current or feed-line coupling | Improve choke and feed-line routing before trimming |
| One side tunes differently from the other | Asymmetry | Re-measure `B`, `C`, `D`, feed gap, and wire routing |

For an antenna that was intentionally built slightly long, the normal path is to trim upward in frequency. Trim in small equal steps and re-measure after every change.

## Driven Element Length Adjustment

The driven element controls resonance most directly.

1. If the SWR minimum is below the target frequency, mark both driven tails.
2. Shorten the driven element by the same amount on both ends.
3. Start with very small cuts.
4. For 2 m, use steps of about `2 mm` to `5 mm` per driven end.
5. For 70 cm, use steps of about `0.5 mm` to `2 mm` per driven end.
6. Restore both `C` gaps to the intended value after each trim.
7. Re-measure the full sweep.
8. Stop trimming when the SWR dip is at, or slightly below, the target frequency.

If the SWR minimum is above the target frequency, the driven element is short. Do not trim anything else to compensate. Lengthen the driven tails if there is spare wire, add small extensions, or rebuild the driven wire longer.

Do not shorten only one driven end. The feed point must remain centered, and the two driven halves must remain equal.

## End Gap `C` Adjustment

The `C` gaps are Moxon-specific tuning controls. They are not just mechanical clearances.

The gaps set the capacitive coupling between the driven tails and reflector tails. Small changes can move impedance and affect the rear null. Equal gaps are more important than a visually perfect rectangle.

Use this procedure only after the resonance is close to the target frequency:

1. Measure and write down both `C` gaps.
2. Change both gaps by the same amount.
3. Use very small steps.
4. For 2 m, use about `1 mm` to `2 mm` per step.
5. For 70 cm, use about `0.3 mm` to `1 mm` per step.
6. After every step, re-measure SWR, impedance, and front-to-back behavior if possible.
7. Keep the reflector and driven tails parallel at both ends.

Typical effects:

| Change | Common result |
| --- | --- |
| Smaller `C` | More coupling, impedance changes more strongly, rear null may shift |
| Larger `C` | Less coupling, pattern may become less Moxon-like, rear rejection may degrade |
| Unequal `C` gaps | Pattern becomes asymmetric and readings can become confusing |

There is no universal rule that smaller or larger `C` always improves SWR. Use measured data. If SWR improves but front-to-back ratio gets worse, do not keep that change unless match is the only priority.

## Spacing `E` Adjustment

Adjust `E` only after the driven length and `C` gaps are close. `E` changes the spacing between driven element and reflector, so it affects impedance and radiation pattern together.

1. Check that the center pipe and T-pieces really place the wire positions at `E`.
2. If the feed resistance near resonance is far from 50 ohms, test a small `E` change if the frame allows it.
3. Move both sides consistently so the driven and reflector wires remain parallel.
4. For 2 m, test changes around `2 mm` to `5 mm`.
5. For 70 cm, test changes around `0.5 mm` to `2 mm`.
6. Re-check `C` after changing `E`; changing the spacing may also move the tail positions.

Do not use `E` as the first correction for a frequency error. If the resonance is in the wrong place, correct the driven length first.

## Reflector Adjustment

The reflector is parasitic and strongly affects the front-to-back ratio. It should normally stay at the calculator value while the driven element is tuned.

Adjust the reflector only if:

1. The driven resonance is correct.
2. The feed line is choked and stable.
3. Both `C` gaps are equal.
4. The match is acceptable.
5. The front-to-back ratio is poor in a repeatable field test.

If the rear null is weak, test tiny reflector-tail changes symmetrically. A longer reflector tends to act more reflector-like, but too much length or poor end-gap spacing can hurt both match and pattern. Keep notes because reflector changes can be harder to interpret than driven-element trims.

## Feed Point And Choke Checks

A Moxon often matches close to 50 ohms, but the feed line can become part of the antenna if the feed is not controlled.

1. Use a short, mechanically stable feed gap at the center of the driven element.
2. Keep both feed leads the same length.
3. Do not run the coax along one half of the driven element.
4. Add a current choke at the feed point.
5. At VHF/UHF, ferrite beads on the coax near the feed point are often more practical than many coax turns.
6. Move the coax by hand while watching SWR.
7. If the trace moves significantly, improve the choke and routing before doing more tuning.

If the antenna only looks good with one special coax length or one special cable route, it is not tuned yet. It is using the feed line as part of the matching system.

## Iterative Tuning Log

Use a log like this. The antenna will tune faster if every change is measured.

| Step | Change made | `C_left` | `C_right` | `E` | `f_min_swr` | `SWR_min` | `R + jX` at target | F/B note |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 | Initial build | | | | | | | |
| 1 | Trim driven ends | | | | | | | |
| 2 | Adjust `C` | | | | | | | |
| 3 | Check choke/feed route | | | | | | | |

## Front-To-Back Field Check

An analyzer cannot measure gain or front-to-back ratio directly. It only measures the feed-point match. A Moxon can have low SWR and still have a poor rear null if the geometry is wrong.

Use a stable signal source:

1. Choose a beacon, repeater, handheld transmitter, or low-power test transmitter on the target frequency.
2. Place the signal source far enough away that it is not in the near field.
3. For 2 m, use at least several meters of separation; more is better.
4. For 70 cm, use at least a few meters of separation; more is better.
5. Keep the signal source at the same polarization as the Moxon.
6. Point the Moxon directly at the signal and record the received level.
7. Rotate the Moxon exactly 180 degrees and record the received level from the rear.
8. Repeat after `C` changes and any reflector-tail changes.

The rear null may be narrower than the forward lobe. Rotate slowly through the rear direction and look for the deepest null. If the best null is not directly behind the antenna, suspect unequal `C` gaps, unequal wire lengths, feed-line radiation, or nearby objects.

## Final Lock-Down

When the antenna is tuned:

1. Record final `A`, `B`, `C`, `D`, `E`, feed gap, wire type, and insulation state.
2. Record the final analyzer sweep or save a screenshot.
3. Mark the wire positions on the pipes or printed parts.
4. Secure the wire so vibration cannot change the `C` gaps.
5. Secure the feed cable so it always leaves the antenna the same way.
6. Re-measure after final soldering, crimping, heat-shrink, or glue.
7. Re-measure again in the final operating position.

Expect a small shift after final assembly. Heat-shrink, cable ties, solder lugs, coax position, wet plastic, and nearby hands can all affect VHF/UHF measurements.

## Troubleshooting

| Problem | Check first | Moxon-specific cause |
| --- | --- | --- |
| No clear SWR dip | Analyzer calibration and feed continuity | Driven element may not be split correctly or reflector may contact driven wire |
| Dip is much too low | Driven element too long | Insulated wire or extra feed hardware made it electrically longer |
| Dip is much too high | Driven element too short | Trimmed too far or calculator used wrong frequency/diameter |
| Good SWR but poor directionality | Pattern was not preserved | `C` gaps unequal, reflector wrong length, feed line radiating |
| SWR changes when touched | Common-mode current | Choke missing or ineffective, coax routed through active field |
| SWR changes after tightening parts | Geometry changed | `C` or `E` moved during lock-down |
| Different readings indoors and outdoors | Environment changed | Nearby metal, ground height, walls, or operator body detuned the antenna |

## Practical Targets

These are realistic field targets for a simple kit build:

| Target | Good result |
| --- | --- |
| Resonance | SWR minimum near the chosen operating frequency |
| Feed impedance | Close to `50 ohms` resistive with low reactance near target |
| SWR | Below `1.5:1` across the intended operating segment is usually excellent |
| Feed stability | Small SWR change when coax is moved after choking |
| Pattern | Clear forward preference and a repeatable rear null |

Do not sacrifice a strong, repeatable rear null just to change SWR from `1.4:1` to `1.1:1`. For a directional Moxon, pattern quality is part of antenna performance.

## References

| Reference | How it was used |
| --- | --- |
| [Moxon Rectangle Antenna Theory](notebooks/moxon_theory.md) | Existing repo theory note for dimension names, H-frame terminology, feed-point notes, and limitations. |
| [W6BSD Moxon Antenna Calculator](https://0x9900.com/moxon-antenna-calculator/) | Existing repo calculator reference for first-cut Moxon dimensions. |
| [3G-aerial Moxon Antenna Calculator with Model Export](https://3g-aerial.biz/en/online-calculations/antenna-calculations/moxon-antenna-calculator) | Confirms `A`, `D`, reflector length terminology and notes that calculations are based on Cebik/W4RNL formulas with MoxGen-style empirical corrections, not NEC optimization. |
| [AC6LA MoxGen](http://www.ac6la.com/moxgen.html) | Classic Moxon Rectangle Generator reference used by many builders for 50 ohm Moxon dimensions from frequency and wire size. |
| [L. B. Cebik, W4RNL: The Moxon Rectangle: A Review](http://www.antentop.org/w4rnl.001/mox20.html) | Background on Moxon geometry, modeling, feed impedance, and pattern behavior. |
| [Wikipedia: Moxon antenna](https://en.wikipedia.org/wiki/Moxon_antenna) | General overview of the Moxon as a compact two-element parasitic array and notes about VHF/UHF tubing builds and wavelength-sensitive reflector placement. |
| [G1YBB: Easy building of a Moxon antenna with 4NEC2](https://g1ybb.uk/easy-building-of-a-moxon-antenna-with-4nec2/) | Practical note that insulated wire can shift resonance and that modeling or measurement should validate calculator dimensions. |
| [Radio-Stuff: Building the 2m Moxon Kit](https://www.radio-stuff.com/post/building-the-2m-moxon-kit) | Practical 2 m kit-building reference, including equal trimming and the observation that MoxGen dimensions may build electrically long depending on height and insulated wire. |
| [NanoVNA practical guide: calibration, antenna measurements](https://nexttechworld.com/rf-test-equipment/nanovna-practical-guide/) | Measurement guidance for S11, SWR, impedance, resonance, feedline effects, and choke validation. |
| [Keystone Amateur Radio Society: Tuning and Testing Antennas with the NanoVNA](https://karsqth.org/tuning-and-testing-antennas-with-the-nanovna-a-starters-guide) | Basic NanoVNA antenna workflow: narrow sweep, open/short/load calibration, SWR dip interpretation, and length correction. |
| [NodakMesh: NanoVNA Antenna Testing Guide](https://nodakmesh.org/blog/nanovna-antenna-testing-guide) | Practical reminder that NanoVNA measurements show match and resonance, not gain, and that low SWR alone does not prove antenna performance. |
