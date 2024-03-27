
![Prospector Logo](https://github.com/criani/prospector_public/blob/main/prospector.png)



# Installation
To download and install Prospector in the easiest way, follow the below guides for your system type. Please note that this will pull and install all required programs and dependencies, as well as pull the latest image of prospector. Scans, Logs, and License data will persist when pulling a newer version. So, to update prospector, simply run the below commands again.

## System Recommendations
Ubuntu 22.04 LTS Operating System - Can be obtained free at [https://ubuntu.com/download/desktop](https://ubuntu.com/download/server)

A Typical VM should have at least 2 cores and 4GB RAM, Prospector is very light weight. Scan speed will slightly increase with 4 cores due to the multi-thread actions taken during scans. 

The system will need internet access for installation and scanning. Most firewall default allow outbound, you will not need any inbound rules, unless the system is fully isolated on its own LAN, in which case port 5000 inbound HTTP is required for connecting to the web interface. 

Note: There is no CLI for prospector, all actions are taken via the frontend on a web browser. 

#### Ubuntu/Debian

1. **Download and run the Auto-Install Script**

   Run the following in your `/opt/` directory, or any other directory where you have appropriate permissions and want to install.

   ```sh
   curl -s https://raw.githubusercontent.com/criani/prospector_public/main/autoinstall_deb.sh | sudo bash
   ```
   This script will automatically pull and run the autoinstall script on your Debian based system and install Docker and docker-compose (if needed / not already installed) and the required images, and will set up and start Prospector in a Docker container listening on port 5000 of the host system.
   
   To access Prospector simply open a browser and go to `http://<host-IP>:5000` where `<host-IP>` is the IP address of the Docker host.

   Once connected, you will need to activate a license key. Either enter the license key you were provided, or you can obtain one by clicking on Manage License > Manage Subscription > and then selecting your subscription choice.

   All subscription options include a complimentary 14-day trial period, which commences upon the first scan. Subscriptions can be terminated at any time for a prorated refund by clicking 'Manage Existing Subscription'. Upon cancellation, all previous scans and reports will remain accessible, although no new scans can be initiated. Each customer is entitled to one 14-day trial. Should additional time beyond the initial 14 days be required, please reach out to Nextier Cyber for extension possibilities.

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

   Once connected, you will need to activate a license key. Either enter the license key you were provided, or you can obtain one by clicking on Manage License > Manage Subscription > and then selecting your subscription choice.

    All subscription options include a complimentary 14-day trial period, which commences upon the first scan. Subscriptions can be terminated at any time for a prorated refund by clicking 'Manage Existing Subscription'. Upon cancellation, all previous scans and reports will remain accessible, although no new scans can be initiated. Each customer is entitled to one 14-day trial. Should additional time beyond the initial 14 days be required, please reach out to Nextier Cyber for extension possibilities. 


