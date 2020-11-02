## Recovery Device Tree for the 2019 Samsung Galaxy Tab A 8.0 [SM-T290]

## How-to compile it:

To build:

```sh
. build/envsetup.sh
lunch omni_gtowifi-eng
make recoveryimage
```

Notes:
* When building tarballs (.tar.md5) for flashing with Odin, the recovery image needs to be signed with the AVB hash footer.  For example,

```avbtool add_hash_footer --image recovery.img --partition_name recovery --partition_size 0x4000000 --key rsa4096_vbmeta.pem --algorithm SHA256_RSA4096
