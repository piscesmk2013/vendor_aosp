lunch_others_targets=()
for device in $(python vendor/aosp/tools/get_official_devices.py)
do
    for var in user userdebug eng; do
        lunch_others_targets+=("aosp_$device-$var")
    done
done

if [ -d "hardware/google/pixel/kernel_headers" ]; then
    rm -rf hardware/google/pixel/kernel_headers
fi

export SKIP_ABI_CHECKS=true
