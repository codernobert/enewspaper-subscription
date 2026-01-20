ms-enewspaper-subscription
Provides a simplified, standardized interface for handling epaper subscription-related operations including payments, activations, and deactivations.

BUILDING THE APPLICATION

Basic Requirements
^OpenJDK 17
^Apache Maven 3.6.3
VPN connection
Running the application
From a terminal, run the commands below:

git clone https://gitlab.safaricom.co.ke/MicroServices/dxl-build/ms-enewspaper-subscription.git
git checkout develop
cd ms-enewspaper-subscription
mvn clean install
java -ea -jar target/ms-enewspaper-subscription-1.0.0.jar
A technical documentation can be found at [Confluence](https://safaricom.atlassian.net/wiki/spaces/MicroservicesDocumentation/pages/2317123659/ePaper+Design+LLD)