# Installation
To download and install Prospector in the easiest way, follow the below guides for your system type. Please note that this will pull and install all required programs and dependencies, as well as pull the latest image of prospector. Scans, Logs, and License data will persist when pulling a newer version. So, to update prospector, simply run the below commands again.

#### Ubuntu/Debian

1. **Download and run the Auto-Install Script**

   Run the following in your `/opt/` directory, or any other directory where you have appropriate permissions and want to install.

   ```sh
   curl -s https://raw.githubusercontent.com/criani/prospector_public/main/autoinstall_deb.sh | sudo bash
   ```
   This script will automatically pull and run the autoinstall script on your Debian based system and install Docker and docker-compose (if needed) and the required images, and will set up and start Prospector in a Docker container listening on port 5000 of the host system.
   To access Prospector simply open a browser and go to `http://<host-IP>:5000` where `<host-IP>` is the IP address of the Docker host. 

#### CentOS/Redhat

1. **Download and run the Auto-Install Script**

   Run the following in your `/opt/` directory, or any other directory where you have appropriate permissions and want to install.

   ```sh
   curl -O https://raw.githubusercontent.com/criani/prospector_public/main/autoinstall_rhel.sh
   chmod +x autoinstall_yum.sh
   sudo ./autoinstall_yum.sh
   ```
   This script will automatically pull and run the autoinstall script on your YUM based system and install Docker (if needed) and the required images, and will set up and start Prospector in a Docker container listening on port 5000 of the host system.
   To access Prospector simply open a browser and go to `http://<host-IP>:5000` where `<host-IP>` is the IP address of the Docker host. 


