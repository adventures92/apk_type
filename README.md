# [![Typing SVG](https://readme-typing-svg.demolab.com?font=Poppin&pause=1000&width=435&lines=APK+TYPE+%E2%9D%93)](https://git.io/typing-svg)

The apk_type.sh script is a command-line tool written in Bash that allows developers to easily determine the type of an Android app based on its APK file.

# 📱 apk_type.sh

The `apk_type.sh` script is a command-line tool written in Bash that allows developers to easily determine the type of an Android app based on its APK file. 

## 🚀 Features
- Identifies whether an app is native, Flutter, or React Native.
- No dependencies or third-party libraries required.
- Works on any Unix-based system.
- Easy to use and extensible.

## 💻 How to use
1. Download or clone the repository.
2. Make sure the script has executable permission (`chmod +x apk_type.sh`).
3. Run the script and provide the path to the APK file as an argument (`./apk_type.sh /path/to/apk`).
4. The script will print the type of the app in the console.

## 🖥️ Output
The script will output a message that indicates the app type of the APK file. The message will be in the following format:
```
APK type: Native
```
The actual app type will depend on the contents of the APK file.


## 🛠️ How it works
The script uses the `file` command to determine the MIME type of the APK file. Then, it looks for specific files within the APK to determine whether it's a native, Flutter, or React Native app.

## 🌟 Extensibility
The `apk_type.sh` script is easily extensible, making it a great starting point for developers who want to add additional app types or features.

## 📜 License
The `apk_type.sh` script is released under the GNU General Public License v3.0. See `LICENSE` for more information.

## 🙏 Acknowledgments
This script was inspired by the need for a quick and easy way to determine an app's type during development. Thank you to the Bash community for providing resources and inspiration for this project.
