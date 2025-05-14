# Contributing

Thank you for your interest in contributing to **HealthKit Sync**!

This project is maintained by Lucas Jolibois and focuses on seamless integration with Apple HealthKit, including read, write, and delete operations for meals, workouts, body metrics, and more.

## Code of Conduct

Please follow our [Code of Conduct](./CODE_OF_CONDUCT.md) to ensure a welcoming and respectful community.

## How to Contribute

We welcome contributions that fix bugs, add features, or improve documentation. Here’s how:

1. **Report Bugs or Request Features**  
   - Use the [Issues](https://github.com/lucasjolibois54/healthKit-sync/issues) tab to describe bugs or propose features.  
   - Search existing issues first to avoid duplicates.

2. **Submit a Pull Request**  
   - Fork or clone this repository.  
   - Create a branch for your work:
     ```bash
     git checkout -b feature/your-feature-name
     ```  
   - Make your changes, keeping each PR focused on a single concern.  
   - Add or update tests and documentation as needed.  
   - Commit with a clear message:
     ```bash
     git commit -m "Add deleteMealById: implement deletion by metadata"
     ```  
   - Push your branch:
     ```bash
     git push origin feature/your-feature-name
     ```  
   - Open a PR against the `main` branch and fill out the template.

3. **Review & Merge**  
   - The maintainer will review your PR and may request changes.  
   - Once approved, your changes will be merged and released.

## Development Setup

1. Clone the repo:
   ```bash
   git clone https://github.com/lucasjolibois54/healthKit-sync.git
   cd healthKit-sync
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. For iOS native code changes, install pods and open Xcode:
   ```bash
   cd ios
   pod install
   open HealthKitSync.xcworkspace
   cd ..
   ```
4. Make your changes, then rebuild your development client or run in your app.

---

Thank you for helping make **HealthKit Sync** better! 🎉  
