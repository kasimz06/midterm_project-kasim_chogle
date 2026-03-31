# Stage 1: Build Environment
FROM cirrusci/flutter:stable AS build

# Set working directory
WORKDIR /app

# Copy the project files
COPY . .

# Get dependencies
RUN flutter pub get

# Build the Android APK (Release mode)
RUN flutter build apk --release

# Stage 2: Output 
# This stage just confirms the build worked since there is no "UI" in Docker
FROM alpine:latest
WORKDIR /output
COPY --from=build /app/build/app/outputs/flutter-apk/app-release.apk .
CMD ["echo", "Final Project APK build successful. File located in /app/build/app/outputs/flutter-apk/"]