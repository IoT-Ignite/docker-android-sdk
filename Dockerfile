FROM runmymind/docker-android-sdk:latest

# Good habit to run before installing
RUN apt-get update

# Install Build tools
RUN apt-get install -y \
  zip \
  && rm -rf /var/lib/apt/lists/*

# Install Android SDK Licenses
RUN echo "8933bad161af4178b1185d1a37fbf41ea5269c55\nd56f5187479451eabf01fb78af6dfcb131a6481e\n24333f8a63b6825ea9c5514f83c2829b004d1fee" > $ANDROID_HOME/licenses/android-sdk-license
