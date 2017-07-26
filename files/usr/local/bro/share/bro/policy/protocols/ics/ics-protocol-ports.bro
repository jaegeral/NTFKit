signature sid-unknown-0 {
  ip-proto == udp
  dst-port == 47808
  event "Possible ICS Traffic Detected: BACnet on udp port 47808"
  }

signature sid-unknown-1 {
  ip-proto == tcp
  dst-port == 20000
  event "Possible ICS Traffic Detected: DNP3 on tcp port 20000"
  }

signature sid-unknown-2 {
  ip-proto == tcp
  dst-port == 502
  event "Possible ICS Traffic Detected: Modbus on tcp port 502"
  }

signature sid-unknown-3 {
  ip-proto == tcp
  dst-port == 1911
  event "Possible ICS Traffic Detected: Niagara-Fox on tcp port 1911"
  }

signature sid-unknown-4 {
  ip-proto == tcp
  dst-port == 1962
  event "Possible ICS Traffic Detected: PCWorx on tcp port 1962"
  }

signature sid-unknown-5 {
  ip-proto == tcp
  dst-port == 102
  event "Possible ICS Traffic Detected: S7 on tcp port 102"
  }

signature sid-unknown-6 {
  ip-proto == tcp
  dst-port == 2455
  event "Possible ICS Traffic Detected: cadesys on tcp port 2455"
  }

signature sid-unknown-7 {
  ip-proto == udp
  dst-port == 1089
  event "Possible ICS Traffic Detected: Foundation-Fieldbus on udp port 1089"
  }

signature sid-unknown-8 {
  ip-proto == tcp
  dst-port == 18245
  event "Possible ICS Traffic Detected: ge-srtp on tcp port 18245"
  }

signature sid-unknown-9 {
  ip-proto == udp
  dst-port == 5094
  event "Possible ICS Traffic Detected: hart-ip-udp on udp port 5094"
  }

signature sid-unknown-10 {
  ip-proto == tcp
  dst-port == 2404
  event "Possible ICS Traffic Detected: iec-104 on tcp port 2404"
  }

signature sid-unknown-11 {
  ip-proto == tcp
  dst-port == 5007
  event "Possible ICS Traffic Detected: melsec-q-tcp on tcp port 5007"
  }

signature sid-unknown-12 {
  ip-proto == tcp
  dst-port == 9600
  event "Possible ICS Traffic Detected: omron-tcp on tcp port 9600"
  }

signature sid-unknown-13 {
  ip-proto == tcp
  dst-port == 20547
  event "Possible ICS Traffic Detected: proconos on tcp port 20547"
  }

signature sid-unknown-14 {
  ip-proto == tcp
  dst-port == 789
  event "Possible ICS Traffic Detected: redlion-crimson3 on tcp port 789"
  }

