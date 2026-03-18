# corners.py
from itertools import product

# =========================
# Corners CLÁSICOS (default)
# =========================
CORNERS = {
    "TT": {
        "process": "tt",
        "vdd": 1.2,
        "iref": 50e-6,
        "vcm": 0.6,
        "temp": 60,
    },
    "FF": {
        "process": "ff",
        "vdd": 1.26,
        "iref": 52.5e-6,
        "vcm": 0.63,
        "temp": 0,
    },
    "SS": {
        "process": "ss",
        "vdd": 1.14,
        "iref": 47.5e-6,
        "vcm": 0.57,
        "temp": 120,
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

