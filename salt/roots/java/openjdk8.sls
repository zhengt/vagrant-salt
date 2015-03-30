{% if grains['os_family']=="RedHat" %}
java-1.8.0-openjdk-devel:
  pkg:
    - installed
{% elif grains['os_family']=="Debian" %}
openjdk-8-jdk:
  pkg:
    - installed
{% endif %}