FROM mcr.microsoft.com/playwright:jammy

ENV DEBCONF_NOWARNINGS=yes

RUN apt-get update && apt-get install -y git curl ssh ca-certificates

# INSTALL Google Chrome
RUN curl -fsSL https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmour -o /usr/share/keyrings/google-keyring.gpg
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/google-keyring.gpg] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
RUN apt-get update -y && apt-get install -y --no-install-recommends google-chrome-stable
# && apt-get install -y --no-install-recommends google-chrome-stable xvfb fonts-vlgothic

# INSTALL Microsoft Edge
RUN curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmour -o /usr/share/keyrings/microsoft-keyring.gpg
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-keyring.gpg] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-beta.list
RUN apt-get update -y && apt-get install -y --no-install-recommends microsoft-edge-beta

USER pwuser
WORKDIR /home/pwuser/app
