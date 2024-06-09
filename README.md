# MeasureAp

This Flutter application implements Clean Architecture with Dependency Injection using `get_it`, state management with `flutter_bloc`, and Firebase Cloud Firestore as a backend for managing collections of `cognitive_status`, `applicable_measures`, and `patients`.

## Table of Contents

- [Getting Started](#getting-started)
- [Dependencies](#dependencies)
- [Configuration](#configuration)


## Getting Started

Follow these instructions to get the project up and running on your local machine.

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Firebase Project](https://firebase.google.com/)

### Installation

1. Clone the repository:

```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo

2. Install dependencies:
flutter pub get

##  Dependencies
- get_it: Dependency Injection
- flutter_bloc: State Management
- firebase_core: Firebase Core
- cloud_firestore: Firebase Cloud Firestore

## Usage
- Run the app:
    flutter run

## Assumptions Made
Model for new assessment:

- cognitive_statuses
  - {cognitiveStatusId}
  - name: "Cognitive Status 1"
- measures
  - {measureId}
  - name: "Memory Test"
  - cognitiveStatusId: "{cognitiveStatusId}"
- patients
  - {patientId}
  - name: "John Doe"
  - measureId: "{measureId}"
