FROM selenium/standalone-chrome

ENV ENV_AUT_URL=192.168.137.47
ENV ENV_AUT_PORT=8080

ADD target/WebGoat-Selenium.jar .

CMD java -jar ./WebGoat-Selenium.jar -host ${ENV_AUT_URL} -port ${ENV_AUT_PORT} -chrome -driver /usr/bin/chromedriver -headless -un webgoat -pw webgoat