logger "[ACPI] Handling wifi button with rfkill"
rf=/sys/class/rfkill/rfkill0
case $(< $rf/state) in
  0) echo 1 > $rf/state;;
  1) echo 0 > $rf/state;;
esac
