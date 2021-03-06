{%- from 'oracle-jdk8/settings.sls' import java with context %}

jdk-config:
  file.managed:
    - name: /etc/profile.d/java.sh
    - source: salt://oracle-jdk8/java.sh
    - template: jinja
    - mode: 644
    - user: root
    - group: root
    - context:
      java_home: {{ java.java_home }}
