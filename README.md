# WHMCS-Blend-Admin-Theme-Dark-Mode
This file adds dark interface to the Blend admin theme of WHMCS

![Homepage](https://raw.githubusercontent.com/WevrLabs-Group/WHMCS-Blend-Admin-Theme-Dark-Mode/master/screenshots/admin-homepage.png)

## Instalation
* Backup your WHMCS install folder first.
* Download the master of this repository and unzip the contents.
* Upload `darkblend` folder to your WHMCS addons folder: `/yourwhmcspath/modules/addons/`.
* Navigate to `System Settings` > `Addon Modules` and then activate `Blend Dark Mode` addon.
* Refresh the page after activation to see changes.

### upgrading from previous veriosns:
* Go to your `/yourwhmcspath/includes/hooks/` folder and remove the `WHMCSBlendDarkMode.php` file. Without this step, you may experience some style overrides from the old version css file.

## Notes:
* This addon is compatible with WHMCS v8.x versions.

## Change Notes:
- 3.0.0
    - Redisgend as addon so installation process is now even more simple.
    -  witCompatibilityh WHMCS v8.x.
- 2.0.0
    - Installation process has been made more simple now.
    - More enhancements to appearance.
- 1.0.0
    - Initial release.

## Credits:
* Mohamed S. ([WevrLabs](https://wevrlabs.net))
* brian! ([WHMCS Community](https://whmcs.community/profile/210329-brian/))
* Daniel M. Reck ([forzandoArts](https://forzando.art/digital))
