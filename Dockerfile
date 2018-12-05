FROM centos
RUN yum install -y epel-release \
  && yum install -y Xvfb \
  && yum install -y xorg-x11-fonts* \
  && yum install -y google-noto-sans-simplified-chinese-fonts.noarch \
  && yum install -y mesa-dri-drivers \
  && yum install -y CutyCapt \
  && rm -rf /var/cache/yum \
  && dbus-uuidgen > /var/lib/dbus/machine-id