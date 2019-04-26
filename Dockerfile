FROM registry-vpc.cn-shanghai.aliyuncs.com/hzph/java:base
ADD app.jar /app.jar


ADD *.properties /
ADD logback.xml /logback.xml 

#设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
