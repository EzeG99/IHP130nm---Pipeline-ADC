## Overview
This repository was created as part of my analog design training, with the goal of designing a pipeline ADC.

Currently, the MDAC is the only block under development.


## Target Specifications
| Parameter | Target | 
|-----------|-------|
| Resolution | 10 bits | 
| Sampling Rate | 100 MS/s | |
| Input Range | 400 mVpp diff | |
| VDD | 1.2 V | |
| PDK | IHP 130 nm | |

## Architecture
- Flip-around MDAC.
  - Fully differential folded telescopic (with gm boosting) amplifier.
- 1.5 bit stage.
