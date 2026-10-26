# =========================================================================
# GRAPHENEOS HARDENED MEMORY ALLOCATOR PRODUCTION SPECIFICATION
# FORENSIC HARDWARE HARDENING & ZERO-LATENCY ALLOCATION BALANCING
# =========================================================================

CONFIG_WERROR := true
CONFIG_NATIVE := true
CONFIG_CXX_ALLOCATOR := true
CONFIG_UBSAN := false

# FORENSIC LAYER: Enforce absolute kernel-level mprotect layout sealing
CONFIG_SEAL_METADATA := true

# FORENSIC LAYER: Clear remanence variables immediately upon chunk release
CONFIG_ZERO_ON_FREE := true
CONFIG_WRITE_AFTER_FREE_CHECK := true

# HARDWARE ACCELERATION: Leverage native platform cache layout alignment
CONFIG_SLAB_RANDOMIZE := true
CONFIG_SLAB_CANARY := true

# PRODUCTION SCALING: Micro-allocated queues to preserve hardware cycles
CONFIG_SLAB_QUARANTINE_RANDOM_LENGTH := 4
CONFIG_SLAB_QUARANTINE_QUEUE_LENGTH := 16

# FRONTIER COMPATIBILITY: Standard production structural size matrices
CONFIG_EXTENDED_SIZE_CLASSES := true
CONFIG_LARGE_SIZE_CLASSES := true

# HARDWARE EFFICIENCY: Optimized guard allocation density markers
CONFIG_GUARD_SLABS_INTERVAL := 1
CONFIG_GUARD_SIZE_DIVISOR := 2

# HARDWARE EFFICIENCY: Balanced structural tracking limits to prevent memory overhead
CONFIG_REGION_QUARANTINE_RANDOM_LENGTH := 64
CONFIG_REGION_QUARANTINE_QUEUE_LENGTH := 256
CONFIG_REGION_QUARANTINE_SKIP_THRESHOLD := 33554432
CONFIG_FREE_SLABS_QUARANTINE_RANDOM_LENGTH := 32

CONFIG_CLASS_REGION_SIZE := 34359738368
CONFIG_N_ARENA := 4
CONFIG_STATS := false
CONFIG_SELF_INIT := true
CONFIG_LABEL_MEMORY := false
