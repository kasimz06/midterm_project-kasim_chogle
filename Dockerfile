# Use official Flutter image
FROM cirrusci/flutter:stable

WORKDIR /app

# Copy pubspec and fetch dependencies
COPY pubspec.* ./
RUN flutter pub get

# Copy all files
COPY . .

# Run the app
CMD ["flutter", "run", "--no-sound-null-safety"]