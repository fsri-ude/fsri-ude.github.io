---
title: "Verhalten nach UDE Hack"
date: 2022-12-07T14:34:49Z
expiryDate: 2023-12-31T23:59:59Z
draft: false
author: FSRi
categories:
- Sicherheit
- UDEoffline
description: Passwort-Manager und weitere Tipps nach dem UDE-Hack
slug: verhalten-nach-ude-hack
tags:
- Sicherheit
- UDEoffline
- Universität Duisburg-Essen
---

## Hackerangriff auf die UDE

Die Universität Duisburg-Essen hat einen Hackerangriff erlitten,
die meisten Dienste sind aktuell nicht nutzbar.

## Offizielle Informationen

Offizielle Informationen stammen von der Pressestelle der Universität,
die Webseite der Universität ist aktuell nicht normal erreichbar,
leitet aber auf die Ausweichseite [uni-due.org](https://uni-due.org/) weiter.

## Erwartbare Konsequenzen

Wir *vermuten*, dass die Passwörter zur Anmeldung an Uni-Diensten (z.B. Moodle),
wie auch persönliche WLAN-Passwörter (eventuell gleich dem Anmeldepasswort),
nicht mehr sicher sind.

Sollten Sie diese Passwörter auch anderswo verwendet haben,
empfehlen wir diese baldestmöglich zu wechseln.

## Passwort-Tipps

Dieser Post soll keine Sammlung häufig gesehener Tipps
für das Ausdenken eines Passworts sein,
falls jedoch eine solche gewünscht ist,
verweisen wir auf [diesen Artikel des Anti-Virus Herstellers G-DATA](https://www.gdata.de/tipps-tricks/sichere-passwoerter).

Stattdessen empfehlen wir, einzigartige Passwörter für jeden Login zu verwenden.
Um diese Passwörter zu behalten, bietet sich ein Passwort-Manager an,
von denen wir zwei Optionen vorstellen.

### KeePassXC

![Screenshot KeePass Oberfläche auf Windows](https://upload.wikimedia.org/wikipedia/commons/3/3b/KeePass_Main.png)

[KeePass](https://keepass.info/) und verwandte Programme wie [KeePassX](http://keepassx.org/) und [KeePassXC](https://keepassxc.org/) sind Passwort-Manager,
die Passwörter in einer __lokalen__, verschlüsselten Datenbank speichern.

Die Originalversion KeePass ist einer vier populärsten Passwortmanager ([2017](https://en.wikipedia.org/wiki/KeePass#:~:text=a%202017%20consumer%20reports%20article%20described%20keepass%20as%20one%20of%20the%20four%20most%20widely%20used%20password%20managers%20(alongside%201password%2C%20dashlane%20and%20lastpass))),
und ist besonders für Windows Systeme geeignet.

Für Nutzer anderer, oder insbesondere mehrerer Betriebssysteme (Linux, Android, iOS, ...),
empfiehlt sich die Cross-Platform Alternative KeePassXC.

![Screenshot KeePassXC Oberfläche Thema Vergleich](https://keepassxc.org/images/screenshots/theme_comparison.png)

Wir raten zu KeePassXC: [Quick Start Guide](https://keepassxc.org/docs/KeePassXC_GettingStarted.html). ([Unterschied erklärt im KeePassXC FAQ](https://keepassxc.org/docs/#faq-keepass))

### Bitwarden

![Bitwarden auf verschiedenen Geräten](https://images.ctfassets.net/7rncvj1f8mw7/6ioKconkSBRtvtIXoHeBsF/76256e7d5038d471e37e3d6cfef3b60d/product-grouping-1.png?w=1000&h=678)

[Bitwarden](https://bitwarden.com/) ist ein Passwort-Manager von 2016,
der Passwörter, Notizen, und Weiteres in einer online gespeicherten, verschlüsselten "Vault" ablegt.

Diese Vault ist wie bei KeePass mit einem "Master-Passwort" geschützt,
die Desktop- und Mobile-Apps unterstützen das Entsperren der Vault allerdings auch
mit Biometrischer Authentifizierung.

Die Synchronisation über mehrere Geräte, wie auch Nutzung im Browser über Addons,
werden von Bitwarden leicht gemacht.

Bitwarden ist ein kostenfreies Produkt,
das durch ein [Premium Abonnement](https://bitwarden.com/pricing/)
(zum Zeitpunkt der Veröffentlichung für 10 US Dollar im Jahr erhältlich)
unterstütz wird.
Die meisten Features sind in der kostenfreien Version enthalten.

Für Selbst-Hoster gibt es das Community-Projekt [Vaultwarden](https://github.com/dani-garcia/vaultwarden).

### Mehr-Faktor-Authentifizierung

Ein Passwort ist oft nicht mehr ausreichend, um ein Konto zu schützen.

Zwei-Faktor-Authentifizierung (2FA) bietet eine weitere Hürde für Angreifer,
die das eigene Anmelden aber kaum erschwert.

Meist meint 2FA die Methoden "One-Time Password" (OTP) oder "Timed One-Time Password" (TOTP),
wobei es sich bei beiden um einmalig nutzbare Anmeldecodes handelt,
die zusätzlich zum Passwort beim Anmelden eingegeben werden müssen.

OTP Codes erhält man z.B. per E-Mail oder SMS.
Davon raten wir allerdings ab, da E-Mail und SMS nicht als sichere 2FA Quellen gelten.

TOTP Codes werden von einer App generiert, häufig auf dem Mobilgerät,
oder auch vom Passwort-Manager. Diese sind, im Gegensatz zu OTP Codes,
nur innerhalb eines kurzen Zeitfensters nutzbar (rd. 30 Sekunden).
Das hält Angreifer noch besser davon ab, den Code zu erraten.

Zwei beliebte 2FA Apps sind:

- [Authy](https://authy.com/features/) ([Twilio](https://www.twilio.com/company))
- [Google Authenticator](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2) (Google)

Beide sind in Features ähnlich, wobei Authy eine Wiederherstellung der Codes nach Datenverlust/Zurücksetzen ermöglicht.
Wir empfehlen Authy.

## Weitere Literatur

Für Informationen über diesen Artikel hinaus, hier ein paar Links:

- <https://authy.com/what-is-2fa/>
- <https://www.consumerreports.org/digital-security/everything-you-need-to-know-about-password-managers/>
- <https://www.phishing.org/what-is-phishing>
