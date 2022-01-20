// ░▒█▀▀▄░▒█▀▀█░░█▀▀▄
// ░▒█░░░░░▀▀▄▄░▒█▄▄█
// ░▒█▄▄▀░▒█▄▄█░▒█░▒█
// DSTU, Microsoft

FROM wordpress:beta-5.9

# This configuration is required to mount the wp-content folder as a FileShare in Azure
# see: https://stackoverflow.com/questions/65021932/wordpress-in-containers-getting-502-when-loading-some-images 
RUN echo "EnableMMAP Off" >> /etc/apache2/apache2.conf \
    && echo "EnableSendfile Off" >> /etc/apache2/apache2.conf
