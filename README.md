# Mininet OCPP

Notes for controlled, authorized experiments in the project's Mininet test environment.

## Attacks

### Charging station DOS

 - Get CSMS IP address
 - Flood CSMS with BootNotificationRequest
 - Expected Denial of Service

### Charging station takeover

 - Get CSMS IP address
 - Either
   - With MITM attack, get the charger serial code
   - Guess the serial code
 - Send BootNotificationRequest
 - Act as a charging station

### Client MITM

 - Intercept client messages with MITM attack during AuthorizationRequest
 - Deny AuthorizationRequest
 - Send a new AuthorizationRequest with obtained RFID
 - Act as client
