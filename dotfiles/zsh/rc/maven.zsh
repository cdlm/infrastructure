if has_command mvn; then
    export M3_HOME=$bp/opt/maven/libexec
    # block java launcher/booters from stealing focus
    # seems more general than MAVEN_OPTS
    export JAVA_TOOL_OPTIONS='-Djava.awt.headless=true'
fi
