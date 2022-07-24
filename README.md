Config library/snippets for MikroTik RouterOS/SwitchOS
============================================================

**common used configuration snippets**

Targeted to be used in conjunction with [mikrocfg](https://github.com/AenonDynamics/mikrocfg) or standalone

Features
------------------

* Basic RouterOS security settings
* WLAN/Wifi channel definitions (EU)

RouterOS Versions
------------------

Each major release is managed within its own branch

* RouterOS v7 (current)
* RouterOS v6 (legacy)

You can use all branches simultaneously using submodules:

```bash
git submodule add -b v7 ssh://git@github.com:AenonDynamics/routeros-library.git lib-v7
git submodule add -b v6 ssh://git@github.com:AenonDynamics/routeros-library.git lib-v6
```

## License ##
routeros-snippets is OpenSource and licensed under the Terms of [Mozilla Public License 2.0](https://opensource.org/licenses/MPL-2.0). You're welcome to [contribute](docs/CONTRIBUTING.md)
