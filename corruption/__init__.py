# ---------------------------------------------------------------
# Copyright (c) 2023, NVIDIA CORPORATION. All rights reserved.
#
# This work is licensed under the NVIDIA Source Code License
# for I2SB. To view a copy of this license, see the LICENSE file.
# ---------------------------------------------------------------

def build_corruption(opt, log, corrupt_type=None):

    if corrupt_type is None: corrupt_type = opt.corrupt

    elif 'sr4x' in corrupt_type:
        from .superresolution import build_sr4x
        sr_filter = corrupt_type.split("-")[1]
        assert sr_filter in ["pool", "bicubic"]
        method = build_sr4x(opt, log, sr_filter, image_size=opt.image_size)
    
    else:
        raise RuntimeWarning(f"Unknown corruption: {corrupt_type}!")

    return method
