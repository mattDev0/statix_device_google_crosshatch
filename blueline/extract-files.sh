#!/bin/bash
#
# Copyright (C) 2018-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e

VENDOR=google
DEVICE=blueline

# Load extractutils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

LINEAGE_ROOT="$MY_DIR"/../../../..

HELPER="$LINEAGE_ROOT"/vendor/hentai/build/tools/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

if [ $# -eq 0 ]; then
  SRC=adb
else
  if [ $# -eq 1 ]; then
    SRC=$1
  else
    echo "$0: bad number of arguments"
    echo ""
    echo "usage: $0 [PATH_TO_EXPANDED_ROM]"
    echo ""
    echo "If PATH_TO_EXPANDED_ROM is not specified, blobs will be extracted from"
    echo "the device using adb pull."
    exit 1
  fi
fi

<<<<<<< HEAD
=======
function blob_fixup() {
    case "${1}" in
    # Fix typo in qcrilmsgtunnel whitelist
    product/etc/sysconfig/nexus.xml)
        sed -i 's/qulacomm/qualcomm/' "${2}"
        ;;
    vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw/mbn_sw.txt)
        sed -i '7 a\mcfg_sw/generic/China/CMCC/Commercial/Volte_OpenMkt/mcfg_sw.mbn\nmcfg_sw/generic/China/CMCC/Lab/AGNSS_LocTech/mcfg_sw.mbn\nmcfg_sw/generic/China/CMCC/Lab/Conf_VoLTE/mcfg_sw.mbn\nmcfg_sw/generic/China/CMCC/Lab/EPS_Only/mcfg_sw.mbn\nmcfg_sw/generic/China/CMCC/Lab/LPP_LocTech/mcfg_sw.mbn\nmcfg_sw/generic/China/CMCC/Lab/Nsiot_VoLTE/mcfg_sw.mbn\nmcfg_sw/generic/China/CMCC/Lab/RRLP_LocTech/mcfg_sw.mbn\nmcfg_sw/generic/China/CMCC/Lab/TGL_Comb_Attach/mcfg_sw.mbn\nmcfg_sw/generic/China/CMCC/Lab/W_IRAT_Comb_Attach/mcfg_sw.mbn\nmcfg_sw/generic/China/CT/Commercial/hVoLTE_OpenMkt/mcfg_sw.mbn\nmcfg_sw/generic/China/CT/Commercial/OpenMkt/mcfg_sw.mbn\nmcfg_sw/generic/China/CT/Commercial/VoLTE_OpenMkt/mcfg_sw.mbn\nmcfg_sw/generic/China/CU/Commercial/OpenMkt/mcfg_sw.mbn\nmcfg_sw/generic/China/CU/Commercial/VoLTE/mcfg_sw.mbn' "${2}"
        ;;
    vendor/bin/hw/vendor.qti.media.c2@1.0-service)
        "${PATCHELF}" --replace-needed "libavservices_minijail_vendor.so" "libavservices_minijail.so" "${2}"
        ;;
    product/lib64/libsecureuisvc_jni.so)
        "${PATCHELF}" --add-needed "lib-secureuishim.so" "${2}"
        ;;
    esac
}

>>>>>>> 4e3e30c4 (b1c1: Add shim for missing symbol in libsecureuisvc_jni.so)
# Initialize the helper
setup_vendor "$DEVICE" "$VENDOR" "$LINEAGE_ROOT"

extract "$MY_DIR"/device-proprietary-files.txt "$SRC"
extract "$MY_DIR"/device-proprietary-files-other.txt "$SRC"

"$MY_DIR"/setup-makefiles.sh
