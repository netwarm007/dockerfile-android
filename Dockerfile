FROM circleci/android:api-25-alpha

# Download and untar NDK
ENV ANDROID_NDK_HOME /usr/local/android-ndk-linux
ENV ANDROID_NDK_URL http://dl.google.com/android/ndk/android-ndk-r10e-linux-x86_64.bin
RUN mkdir ~/tmp && cd ~/tmp && \
    wget -q "${ANDROID_NDK_URL}" && \
    chmod a+x ./android-ndk-r10e-linux-x86_64.bin && \
    ./android-ndk-r10e-linux-x86_64.bin && \
    mv ./android-ndk-r10e ${ANDROID_NDK_HOME} && \
    rm -rf ~/tmp
ENV PATH ${PATH}:${ANDROID_NDK_HOME}
