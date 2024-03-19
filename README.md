# prospector_public
For download and installation files for Prospector

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
   curl -O https://raw.githubusercontent.com/criani/prospector_public/main/autoinstall_yum.sh
   chmod +x autoinstall_yum.sh
   sudo ./autoinstall_yum.sh
   ```
   This script will automatically pull and run the autoinstall script on your YUM based system and install Docker (if needed) and the required images, and will set up and start Prospector in a Docker container listening on port 5000 of the host system.
   To access Prospector simply open a browser and go to `http://<host-IP>:5000` where `<host-IP>` is the IP address of the Docker host. 


