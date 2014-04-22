NEW!  A useful [link][3] I found.  


Topics
======

Motivation
----------

Apple iMessage is used to send and receive over [two billion text- and multimedia messages per day][1] on 500 million devices worldwide. iMessage offers a number of security enhancements over traditional cellular protocols like SMS and MMS. Since Apple [released some of details about how iMessage works][2] earlier this year, the system has been under some scruntiny involving Apple's alleged ability to read messages sent over their protocol, such as to comply with various government agencies. We intend to explore some of the algorithms used to send messages securely, how it compares with other modern messaging systems, and the sorts of attacks to which iMessage is vulnerable.

Outline
-------

* How are messages transferred from sender to recipient
    * Algorithms involved
       * RSA (Asymmetric key cryptography)
       * ECDSA (Elliptic Curve Digital Signature Algorithm)
       * AES (Advanced Encryption Standard)
       * TLS (Transport Layer Security)
    * Sending media (pictures, long messages)
    * Hardware support for cyptography
* Comparison to XMPP or other chat protocols from a security perspective
* Vulnerabilities
    * Can Apple read iMessage messages?
    * Storage: are messages *stored* on the device encrypted, or are they decrypted on the fly?

[1]: http://appleinsider.com/articles/13/01/23/apple-sees-2b-imessages-sent-every-day-from-half-a-billion-ios-devices
[2]: http://techcrunch.com/2014/02/27/apple-explains-exactly-how-secure-imessage-really-is/
[3]: http://blog.quarkslab.com/imessage-privacy.html
