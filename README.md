## TWRP device tree for Lenovo P70-A

Add to `.repo/local_manifests/P70.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/lenovo/P70" name="ccsysadmin/cm_twrp_P70" remote="github" revision="cm-12.1" groups="pdk" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch cm_P70-userdebug
make -i -j 5 recoveryimage
```