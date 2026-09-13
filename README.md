# LinuxMint-Bypass-HibernateError-MacBook
* Script resolution for stuck hibernate with Linux Mint on MacBook 10,1 12 inches 2017 *
---
When you install Linux Mint on MacBook 12" 2017 pre-T2 generation, when you close lid MacBook enter in hibernate mode. When you're reopen it, screensaver appeared and after 30 seconds it's black screen...

In fact Linux can't awake PCIe Apple devices after hibernate. This script disable D3cold on all PCI devices whith an systemd hook.

1. Create the file in /lib/systemd/system-sleep/nvme-fix.sh
2. Allow execution : sudo chmod +x /lib/systemd/system-sleep/nvme-fix.sh

Try to close lid, wait 30 seconds - 1/2 minutes and reopen and enjoy !

### Diagnostic

You can read the great execution of the script in journalctl :
journalctl -b | grep nvme-fix

Two lines does appeared :
nvme-fix: disabling d3cold for all PCI devices
nvme-fix: post-resume, done
