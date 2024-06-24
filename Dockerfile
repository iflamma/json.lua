FROM openjdk:11.0.7
ENV TZ=Asia/Shanghai
ENV LANG=C.UTF-8
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# RUN bash -c 'mkdir -p -m 777 /app/cert'
# 修改名称
ADD target/jx-services.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
