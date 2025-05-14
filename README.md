# HealthKit Sync

**HealthKit Sync** is a custom version of `react-native-health` designed to simplify syncing and managing health data in iOS apps.

It offers a clean interface for reading, writing, and deleting Apple HealthKit data — including support for meals, workouts, body metrics, and more.

> ⚠️ This package is currently designed for **iOS only**. Android is not supported.

---

## ✨ Key Features

- ✅ Read and write HealthKit data like weight, steps, heart rate, meals, etc.
- 🗑️ Custom support for deleting meals using a `mealId` metadata key
- ⚙️ Easy integration into React Native and Expo (via dev client)

---

## 🚀 Getting Started

1. Install the package:

   ```bash
   npm install git+https://github.com/lucasjolibois54/healthKit-sync.git
   ```

2. Run `pod install` inside your `/ios` directory.

3. Add required permissions in your `Info.plist`:

   ```xml
   <key>NSHealthShareUsageDescription</key>
   <string>Read and understand health data.</string>
   <key>NSHealthUpdateUsageDescription</key>
   <string>Share health data with other apps.</string>
   ```

4. Enable **HealthKit** in your Xcode project's Capabilities tab.

---

## 🧠 Usage Example

```ts
import AppleHealthKit from 'react-native-health';

const permissions = {
  permissions: {
    read: [AppleHealthKit.Constants.Permissions.HeartRate],
    write: [AppleHealthKit.Constants.Permissions.Steps],
  },
};

AppleHealthKit.initHealthKit(permissions, (err) => {
  if (err) return;

  AppleHealthKit.getHeartRateSamples(
    { startDate: new Date(2022, 0, 1).toISOString() },
    (err, results) => {
      console.log(results);
    }
  );
});
```

---

## 🔧 Custom Methods

We’ve added a new deletion method:

```ts
NativeModules.AppleHealthKit.deleteMealById('meal-123', (err, success) => {
  if (err) {
    console.warn('Delete failed:', err);
  } else {
    console.log('Deleted successfully:', success);
  }
});
```

---

## 📄 License

MIT © [Lucas Jolibois](https://github.com/lucasjolibois54)

---

## 🛠 Based On

This library is based on [react-native-health](https://github.com/agencyenterprise/react-native-health) by AE Studio, which is itself a fork of [rn-apple-healthkit](https://github.com/terrillo/rn-apple-healthkit).
