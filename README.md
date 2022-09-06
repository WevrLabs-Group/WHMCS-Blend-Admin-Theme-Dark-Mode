# WHMCS-Blend-Admin-Theme-Dark-Mode
This file adds dark interface to the Blend admin theme of WHMCS

![Homepage](https://raw.githubusercontent.com/WevrLabs-Group/WHMCS-Blend-Admin-Theme-Dark-Mode/master/screenshots/admin-homepage.png)

## Installation
* Download the latest release of this repository and unzip the contents.
* Upload `darkblend` folder to your WHMCS addons folder: `/yourwhmcspath/modules/addons/`.
* Navigate to `System Settings` > `Addon Modules` and then activate `Blend Dark Mode` addon.
* Refresh the page after activation to see changes.

### upgrading from versions before 3.x.x:
* Go to your `/yourwhmcspath/includes/hooks/` folder and remove the `WHMCSBlendDarkMode.php` file. Without this step, you may experience some style overrides from the old version css file.

## Custom CSS:
You can add your custom CSS rules, which will be applied to the admin area. To do that, and inside the addon folder `darkblend` there's a file called `custom-rename.css`, just rename this to `custom.css` and then you can add your customized CSS rules in this file here.

## Notes:
* This addon is .compatible with WHMCS v8.x versions

## Change Notes:
- 3.1.0
    - Ability to add custom css rules for customization.
    - Refactoring css code for easy customizations.
    - Compatibility with WHMCS v8.5.x
    - Add option to display date and time and option to display open tickets count in navbar, inspired from Davide Mantenuto (Katamaze) v8 Admin Stats hook (https://github.com/Katamaze/WHMCS-Action-Hook-Factory#admin-stats-for-whmcs-v8)
    - Re-organize project files
- 3.0.0
    - Redisgend as addon so installation process is now even more simple.
    - Compatibility with WHMCS v8.x.x
- 2.0.0
    - Installation process has been made more simple now.
    - More enhancements to appearance.
- 1.0.0
    - Initial release.

## Credits:
* Mohamed S. ([WevrLabs](https://wevrlabs.net))
* brian! ([WHMCS Community](https://whmcs.community/profile/210329-brian/))
* Daniel M. Reck ([forzandoArts](https://forzando.art/digital))
* Davide Mantenuto ([Katamaze](https://katamaze.com))
