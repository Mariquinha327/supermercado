# Usa a imagem oficial do Tomcat
FROM tomcat:9.0

# Remove aplicações padrão do Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia seu WAR para dentro do Tomcat
COPY WebApplication1.war /usr/local/tomcat/webapps/ROOT.war

# Expõe a porta padrão do Tomcat
EXPOSE 8080

# Inicia o Tomcat
CMD ["catalina.sh", "run"]
