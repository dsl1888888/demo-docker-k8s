FROM openjdk:8
ADD *.jar /app/app.jar
ADD entrypoint.sh /app/
# 每个工程的port都不一样
ENV PORT="16000" TIME="Asia/Shanghai" JAVA_OPS="-Xmx2048m -Xms2048m -XX:+UseConcMarkSweepGC"
RUN set -e \
    && chmod +x /app/entrypoint.sh \
    && ln -snf /usr/share/zoneinfo/$TIME /etc/localtime \
    && echo $TIME > /etc/timezone
ENTRYPOINT  ["/app/entrypoint.sh"]
EXPOSE $PORT
STOPSIGNAL SIGTERM

