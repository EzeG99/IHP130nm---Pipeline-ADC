# corners.py
from itertools import product

# =========================
# Corners CLÁSICOS (default)
# =========================
CORNERS = {
    "TT": {
        "process": "tt",
        "vdd": 1.5,
        "iref": 50e-6,
        "vcm": 0.75,
        "temp": 65,
    },
    "FF": {
        "process": "ff",
        "vdd": 1.575,
        "iref": 52.5e-6,
        "vcm": 0.7875,
        "temp": 0,
    },
    "SS": {
        "process": "ss",
        "vdd": 1.42500,
        "iref": 47.5e-6,
        "vcm": 0.7125,
        "temp": 125,
    },
}

# ==================================
# Corners COMBINADOS (sweep opcional)
# ==================================
def generate_combined_corners():
    """
    Generate a Cartesian sweep of (process, VDD, Temp)
    using realistic values per process.
    """

    PROCESS_SWEEPS = {
        "tt": {
            "vdd":  [1.5],
            "temp": [65],
        },
       "ff": {
           "vdd":  [1.65],
           "temp": [0],
       },
       "ss": {
           "vdd":  [1.35],
           "temp": [125],
       },
    }

    corners = {}

    for process, sweep in PROCESS_SWEEPS.items():
        for vdd, temp in product(sweep["vdd"], sweep["temp"]):
            name = f"{process.upper()}_VDD{vdd:.2f}_T{temp}"
            corners[name] = {
                "process": process,
                "vdd": vdd,
                "temp": temp,
            }

    return corners

