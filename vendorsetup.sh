lunch_others_targets=()
for device in $(python vendor/aosp/tools/get_official_devices.py)
do
    for var in user userdebug eng; do
        lunch_others_targets+=("aosp_$device-$var")
    done
done

export SKIP_ABI_CHECKS=true

# Enable global ThinLTO
#
# This doesn't increase build time significantly, so enable it for
# performance.
export GLOBAL_THINLTO=true