# Unlocked BIOS for Clevo PA70HS, PA70HP, PA71HS, PA71HP. (Same chassis different variant)
Fully Featured BIOS for Clevo PA70Hx (Kabylake)

The BIOS is a little buggy at the moment, but it should work fine overall.

Please be responsible with your electronics and use this at your own risk. Please kindly do not come to me and say "you broke my laptop", this works fine on my laptop afaict

Things that don't work
1. GPU Muxing doesn't work in BIOS (Can still be changed in Windows using Clevo Control Centre)
2. Full screen logo display doesn't seem to work, you will get an empty windows startup screen with the little spinner, no clevo logo
3. You might get stuck on the "Advanced" page if you go over stuff too quickly, reset (reboot) fixes this (can't esc, press f4 if you want to save the current config)
4. I haven't tested anything to do with power mgmnt since I don't really wanna brick my laptop and I don't know what I am doing, use those at your own risk
5. Graphics does not wake from s3, might be able to be fixed with an EC firmware update. (I don't know whether this is a bios problem or a machine problem as I do not have another device to test this bios on.)

If you get stuck in an un-postable state after messing up the settings, you can hold Fn+D to reset your BIOS to its default settings.

Please be prepared to own a 17 inch brick for a few weeks if you don't have the appropriate recovery tool and have to buy them from AliExpress.

For recovery, it's suggested that you use a BIOS chip clamp and a raspberry pi/spi programmer. Disconnect the AC power adapter and battery before connecting your raspberry pi/programmer to the laptop's BIOS chip or you might risk frying your EC.
You may solder wires to the BIOS chip and connect them to the pi/programmer, or you may remove the BIOS chip and program it off-machine. But these methods are not recommended as they're overly complicated and may lead to PCB damage if you are not careful with what you're doing.

You can Google "recover BIOS with raspberry pi" for more information.

Again please don't come to me for "i brick my laptop" requests.

The bios was baked with AMIBCP, I did not add any other things to it except a few newer efi drivers. You can remake the bios yourself with relative ease using AMIBCP.

The above advices provided are general, please consider whether they're right for you.
