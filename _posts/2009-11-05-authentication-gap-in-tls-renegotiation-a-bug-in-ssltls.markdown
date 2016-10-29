---
title: "Authentication Gap in TLS Renegotiation (a bug in SSL/TLS)"
date: 2009-11-05 9:33
comments: true
external-url:
categories:
---
The SSL 3.0+ and TLS 1.0+ protocols are vulnerable to a set of related attacks which allow a man-in-the-middle (MITM) operating at or below the TCP layer to inject a chosen plaintext prefix into the encrypted data stream, often without detection by either end of the connection. This is possible because an “authentication gap” exists during the renegotiation process at which the MitM may splice together disparate TLS connections in a completely standards-compliant way. This represents a serious security defect for many or all protocols which run on top of TLS, including HTTPS.

I first began to suspect the existence of this category of bug in related software while doing code review on some third-party software in support of the solution we provide at my work, [PhoneFactor][1]. That was early August. Many late nights and weekends later, I had enough evidence to talk about, and at the beginning of September, I had a working exploit and demoed it to Steve Dispensa (PhoneFactor CTO).

We realized this situation needed to be handled with a good measure of care. Over the first part of September, 2009, we began disclosing the initial group of independent security consultants for independent verification and advice on how to proceed. An initial group of vendors, which included members of ICASI, the IETF, and multiple open-source SSL implementations were disclosed with technical details over the week of September 21 - 25. A meeting was held at a helpful company’s headquarters in Mountain View, CA on September 29, where tentative agreement was reached on a preliminary solution in the form of a protocol extension. The remediation efforts for this bug have been conducted under the code name “Project Mogul”.

At that meeting, it was pointed out that the proposed solution had many similarities with work being done in the IETF TLS Channel Bindings working group. Indeed, over the coming weeks while vendors made their preparations, we followed the discussions on the IETF mailing list to see how close they might come to uncovering the problem there.

Today, an MitM attack on TLS was proposed by Martin Rex in the public forum. Martin’s early proposal may differ in a few details and lack the research time and working exploit that Steve and I had developed, but it clearly identifies the core problem and effectively represents public knowledge of the bug.  Noted security researcher HD Moore tweeted about the possible attack, and it was quickly re-tweeted by 10 others. Vendors (e.g. PhoneFactor) and security researchers began to get independent requests for more information.

For these reasons, Steve and I feel that public disclosure has now occurred, and the results of our research should be available to all interested parties. I expect some other announcements shortly, including an Internet Draft proposal for the fix.

Technical details are in the attached .zip archive.

[renegotiating\_tls\_20091104\_pub.zip][2]

More posts to come on this topic, and I’ll try to be available for whatever questions arise.

I’ll be posting contact info for the multi-vendor coordination efforts as well.

<http://extendedsubset.com/?p=8>

  [1]: http://phonefactor.com/
  [2]: http://extendedsubset.com/wp-uploads/2009/11/renegotiating_tls_20091104_pub.zip
