FROM circleci/android:api-25-alpha

RUN sudo apt-get update && sudo apt-get install cmake

# Download and untar NDK
ENV ANDROID_NDK_HOME /usr/local/android-ndk-linux
ENV ANDROID_NDK_URL https://dl.google.com/android/repository/android-ndk-r15c-linux-x86_64.zip
RUN mkdir ~/tmp && cd ~/tmp && \
    wget -q "${ANDROID_NDK_URL}" && \
    unzip ./android-ndk-r15c-linux-x86_64.zip && \
    sudo mv ./android-ndk-r15c ${ANDROID_NDK_HOME} && \
    rm -rf ~/tmp
ENV PATH ${PATH}:${ANDROID_NDK_HOME}

