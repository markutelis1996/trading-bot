=== STEP 1: cloud IP ===
Host not in allowlist

=== STEP 2: DNS ===
nslookup: command not found

=== STEP 3: HTTPS TEST (account endpoint, verbose) ===
* TLSv1.3 (OUT), TLS handshake, Finished (20)
* SSL connection using TLSv1.3 / TLS_AES_256_GCM_SHA384 / X25519 / RSASSA-PSS
* ALPN: server accepted h2
* Server certificate:
*  subject: CN=*.alpaca.markets
*  start date: Apr 15 01:04:23 2026 GMT
*  expire date: May 15 01:04:22 2026 GMT
*  subjectAltName: host "paper-api.alpaca.markets" matched cert's "paper-api.alpaca.markets"
*  issuer: O=Anthropic; CN=sandbox-egress-production TLS Inspection CA
*  SSL certificate verify ok.
*   Certificate level 0: Public key type RSA (2048/112 Bits/secBits), signed using sha256WithRSAEncryption
*   Certificate level 1: Public key type RSA (2048/112 Bits/secBits), signed using sha256WithRSAEncryption
* using HTTP/2
* [HTTP/2] [1] OPENED stream for https://paper-api.alpaca.markets/v2/account
* [HTTP/2] [1] [:method: GET]
* [HTTP/2] [1] [:scheme: https]
* [HTTP/2] [1] [:authority: paper-api.alpaca.markets]
* [HTTP/2] [1] [:path: /v2/account]
* [HTTP/2] [1] [user-agent: curl/8.5.0]
* [HTTP/2] [1] [accept: */*]
* [HTTP/2] [1] [apca-api-key-id: REDACTED]
* [HTTP/2] [1] [apca-api-secret-key: REDACTED]
> GET /v2/account HTTP/2
> Host: paper-api.alpaca.markets
> User-Agent: curl/8.5.0
> Accept: */*
> APCA-API-KEY-ID: REDACTED
> APCA-API-SECRET-KEY: REDACTED
< HTTP/2 403
< x-deny-reason: host_not_allowed
< content-length: 21
< content-type: text/plain
< date: Tue, 21 Apr 2026 06:15:44 GMT
Host not in allowlist

=== STEP 4: HTTPS TEST (no auth) ===
HTTP/2 403
x-deny-reason: host_not_allowed
content-length: 21
content-type: text/plain
date: Tue, 21 Apr 2026 06:15:44 GMT

=== STEP 5: BTC ORDER TEST ===
* using HTTP/2
* [HTTP/2] [1] OPENED stream for https://paper-api.alpaca.markets/v2/orders
* [HTTP/2] [1] [:method: POST]
* [HTTP/2] [1] [:scheme: https]
* [HTTP/2] [1] [:authority: paper-api.alpaca.markets]
* [HTTP/2] [1] [:path: /v2/orders]
* [HTTP/2] [1] [user-agent: curl/8.5.0]
* [HTTP/2] [1] [accept: */*]
* [HTTP/2] [1] [apca-api-key-id: REDACTED]
* [HTTP/2] [1] [apca-api-secret-key: REDACTED]
* [HTTP/2] [1] [content-type: application/json]
* [HTTP/2] [1] [content-length: 87]
> POST /v2/orders HTTP/2
> Host: paper-api.alpaca.markets
> User-Agent: curl/8.5.0
> Accept: */*
> APCA-API-KEY-ID: REDACTED
> APCA-API-SECRET-KEY: REDACTED
> Content-Type: application/json
> Content-Length: 87
< HTTP/2 403
< x-deny-reason: host_not_allowed
< content-length: 21
< content-type: text/plain
< date: Tue, 21 Apr 2026 06:15:44 GMT
Host not in allowlist

=== DIAGNOSIS ===
- HTTPS reaches paper-api.alpaca.markets (TLS handshake succeeds, cert valid)
- BUT every request returns HTTP 403 x-deny-reason: host_not_allowed
- This is a network-layer egress filter (Anthropic sandbox), NOT an Alpaca auth issue
- The bot's cloud IP is blocked from calling external APIs directly
- curl to ipify.org also blocked ("Host not in allowlist")
- nslookup not installed in this environment
- Credentials were NOT tested (request never reaches Alpaca servers)
- All workflows using scripts/alpaca.sh will fail in this environment
