<img width="1273" height="715" alt="Screenshot 2025-09-27 135337" src="https://github.com/user-attachments/assets/0661e397-56d8-4880-818a-89b593ce7d63" />
# Simple Lottery Contract

## Project Description

Ein dezentraler Lottery-Smart-Contract, der auf Ethereum basiert und ein faires, transparentes und automatisiertes Lotteriesystem bietet. Spieler können Tickets mit ETH kaufen, und wenn die maximale Anzahl von Tickets erreicht ist, wird automatisch ein Gewinner ausgewählt und mit dem Großteil des Pots belohnt. Der Contract gewährleistet vollständige Transparenz und Fairness durch Blockchain-Technologie.

## Project Vision

Ein vertrauensloses, transparentes und faires Lotteriesystem zu schaffen, das die Notwendigkeit von Zwischenhändlern eliminiert und sicherstellt, dass alle Teilnehmer die Legitimität jeder Ziehung überprüfen können. Unsere Vision ist es, Lotteriesysteme zu demokratisieren, indem wir Blockchain-Technologie nutzen, um gleiche Chancen für alle Teilnehmer zu bieten und dabei vollständige Transparenz im Auswahlprozess zu gewährleisten.

## Key Features

### 🎫 **Einfacher Ticket-Kauf**
- Einfacher Ein-Klick-Ticket-Kauf für 0.01 ETH
- Automatische Teilnahme an der aktuellen Lottery-Runde
- Verfolgen Sie Ihre Ticket-Anzahl in Echtzeit

### 🏆 **Automatische Gewinner-Auswahl**
- Nachweislich faire zufällige Gewinner-Auswahl mit Blockchain-Eigenschaften
- Automatisches Auszahlungssystem - kein Warten auf manuelle Überweisungen
- 90% des Pots gehen an den Gewinner, 10% als Plattformgebühr

### 🔄 **Kontinuierliche Runden**
- Neue Lottery-Runden starten sofort nach jeder Gewinner-Auswahl
- Maximum von 10 Tickets pro Runde für schnelle Abwicklung
- Runden-Tracking und historische Gewinner-Informationen

### 📊 **Vollständige Transparenz**
- Alle Lottery-Informationen öffentlich auf der Blockchain verfügbar
- Echtzeit-Pot-Größe und Ticket-Verkaufs-Tracking
- Historische Daten früherer Gewinner und Beträge

### 🔒 **Sicherheitsfeatures**
- Nur-Eigentümer Notfallfunktionen für Sicherheit
- Eingabevalidierung zur Verhinderung ungültiger Einträge
- Sichere Zufallszahlengenerierung mit Blockchain-Eigenschaften

## Future Scope

### Phase 1: Erweiterte Features
- **Mehrere Ticket-Typen**: Verschiedene Ticket-Preise mit unterschiedlichen Pot-Verteilungen
- **Geplante Ziehungen**: Zeitbasierte Lottery-Runden statt ticketanzahl-basierte
- **Empfehlungssystem**: Bonus-Tickets für die Empfehlung neuer Spieler

### Phase 2: Erweiterte Funktionalität
- **Multi-Runden Jackpots**: Progressive Jackpots, die über mehrere Runden wachsen
- **NFT Integration**: Spezielle NFT-Tickets mit einzigartigen Vorteilen
- **Governance Token**: Community-Abstimmung über Lottery-Parameter und Features

### Phase 3: Plattform-Erweiterung
- **Cross-Chain Support**: Bereitstellung auf mehreren Blockchain-Netzwerken
- **Mobile DApp**: Dedizierte mobile Anwendung für einfachen Zugang
- **Analytics Dashboard**: Umfassende Statistiken und Spieler-Einblicke

### Phase 4: Community-Features
- **Spieler-Profile**: Individuelle Statistiken und Erfolge verfolgen
- **Soziale Features**: Chat, Gruppen und Community-Herausforderungen
- **Wohltätigkeits-Integration**: Option, Gewinne an verifizierte Wohltätigkeitsorganisationen zu spenden

## Technische Spezifikationen

- **Blockchain**: Ethereum-kompatible Netzwerke
- **Sprache**: Solidity ^0.8.19
- **Ticket-Preis**: 0.01 ETH
- **Max Tickets pro Runde**: 10
- **Plattformgebühr**: 10%
- **Gewinner-Auszahlung**: 90% des Gesamtpots

## Getting Started

1. Stellen Sie den `Project.sol` Contract in Ihrem bevorzugten Ethereum-Netzwerk bereit
2. Spieler können `buyTicket()` mit genau 0.01 ETH aufrufen, um teilzunehmen
3. Überwachen Sie die Lottery mit `getCurrentLotteryInfo()`
4. Gewinner wird automatisch ausgewählt, wenn 10 Tickets verkauft sind
5. Neue Runde beginnt sofort nach der Gewinner-Auswahl

## Sicherheitsüberlegungen

- Contract verwendet Pseudo-Zufallszahlengenerierung, geeignet für Low-Stakes-Lottery
- Notfall-Auszahlungsfunktion für Eigentümer verfügbar bei Problemen
- Alle Funktionen enthalten angemessene Zugangskontrollen und Eingabevalidierung

---

*Mit ❤️ für die dezentrale Zukunft entwickelt*
