FROM docker/whalesay:latest
LABEL Name=devops2025 Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes
CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]
EXPOSE 80 
ADD target /html-image-build.jar 
ENTRYPOINT [ "-jar", "/html-image-build.jar" ] 
