# 🌀 LoadingSpinner

A lightweight, reusable SwiftUI loading spinner package with multiple animated styles and an easy-to-use view modifier. Perfect for showing loading states in your apps with style.

---

## ✨ Features

- ✅ Multiple spinner variants: `.default`, `.circle`, `.dots`, `.gradient`
- 🎨 Customizable size and color
- 🔁 Animated and smooth
- 🧩 Easy integration via `.loadingSpinner()` view modifier
- 📦 Swift Package Manager (SPM) support

---

## 📦 Installation

### Using Swift Package Manager

1. In Xcode, go to `File` > `Add Packages...`
2. Enter the URL of this repository:
3. Select the latest version and add it to your app target.

---

## 🛠 Usage

### Import the package:

```swift
import LoadingSpinner
```

## Use the .loadingSpinner() view modifier:

```swift
struct ContentView: View {
    @State private var isLoading = true

    var body: some View {
        VStack {
            Text("Fetching data...")
            Button("Toggle Loading") {
                isLoading.toggle()
            }
        }
        .loadingSpinner(isPresented: $isLoading, variant: .dots, color: .purple, size: 40)
    }
}
```

## 🧪 Spinner Variants

| Variant       | Preview                     | Description                    |
|---------------|-----------------------------|--------------------------------|
| `.default`    | 🌀                          | Native `ProgressView` style    |
| `.circle`     | 🔵                          | Animated circular stroke       |
| `.dots`       | ⚫ ⚫ ⚫                      | Bouncing dots animation        |
| `.gradient`   | 🎨                          | Rotating angular gradient ring |

## 📱 Requirements

1. iOS 14.0+
2. Swift 5.7+
3. SwiftUI

## 🙌 Contributions

Contributions, ideas, and feedback are always welcome! Feel free to open issues or pull requests.

## 📄 License

MIT License. See LICENSE for details.

## 🔗 Author

Made with ❤️ by @hassan31
