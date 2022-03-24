Custom keyboard layouts for macOS
=================================

Кастомные раскладки клавиатуры для macOS

**Table of contents**

- [Usage](#usage)
- [Layouts description](#layouts-description)
- [Development](#development)


Usage
-----

1. Copy layout bundle from [layouts](./layouts) to `~/Library/Keyboard\ Layouts` on your macOS
2. Reboot macOS
3. Go to ** > System Preferences > Keyboard > Input Sources**, click `+` under the list of input sources
   New layout will be available there:
   ![input_sources](/docs/keyboard_input_sources.png)

Layouts description
-------------------

- [layouts/ru_antiwar.bundle](./layouts/ru_antiwar.bundle) - Russian language layout with [Anti-war flag of protestors](https://en.wikipedia.org/wiki/White-blue-white_flag) - for those who hate looking at tricolor flag on their menu bar / Русская расскладка с [правильным флагом](https://en.wikipedia.org/wiki/White-blue-white_flag) для тех, кому не хочется видеть триколор в своём менюбаре

Development
-----------

1. Generate iconset bundle if you plan to use custom icon for your keyboard layout. Use [scripts/create_icns.sh](scripts/create_icns.sh) for this purpose.
2. Use [Ukulele](https://software.sil.org/ukelele/) to create keyboard layout, add icon and save it as bundle (More details are [here](https://saltesta.com/hack/customizing-mac-input-source-icon/))
3. Created bundle could be used to add new Input source on your macOS. See [Usage](#usage) for the details
