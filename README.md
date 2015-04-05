	# init

repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

cd ~/CM11
repo sync -j8


	# Build

cd ~/CM11
source build/envsetup.sh
brunch cm_j608_fly-userdebug

	# or #

lunch cm_j608_fly-userdebug
make otapackage -j8


	# Build recoveries (TWRP)

. build/tools/device/makerecoveries.sh cm_j608_fly-userdebug
