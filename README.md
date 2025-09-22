🚀 SQL Trénink v GitHub Codespaces
Vítejte ve vašem osobním prostředí pro učení a trénování SQL dotazů. Vše běží na PostgreSQL s ukázkovou databází dvdrental v cloudu díky GitHub Codespaces, takže není potřeba nic instalovat lokálně.
⚙️ Prvotní nastavení (pouze jednou)
⚠️ Pozor: Tento postup je potřeba provést pouze při úplně prvním spuštění tohoto Codespace. Pokud ho jen zastavíte a znovu spustíte, přejděte rovnou k sekci "Běžné spuštění".
1. Instalace a spuštění PostgreSQL
Spusťte terminál (☰ -> Terminal -> New Terminal) a zadejte následující příkazy pro instalaci a spuštění databázového serveru.
# Aktualizace a instalace balíčků
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib -y

# Spuštění služby
sudo service postgresql start


2. Vytvoření uživatele a databáze
Nyní si vytvoříme vlastního "superuživatele" a databázi pro práci.
# Přepnutí na systémového uživatele postgres
sudo su postgres


Nyní jste v shellu jako postgres. Spusťte psql terminál:
psql


V psql terminálu (prompt postgres=#) zadejte následující SQL příkazy:
-- Vytvoření nového uživatele (role) s heslem
CREATE USER "100ky" WITH PASSWORD 'Ovladac23';

-- Přidělení práv superuživatele pro snadnější učení
ALTER USER "100ky" SUPERUSER;

-- Vytvoření databáze pro trénink
CREATE DATABASE skoleni_db;

-- Ukončení psql terminálu
\q


Nakonec opusťte i shell uživatele postgres příkazem exit:
exit


3. Obnova databáze ze zálohy
Posledním krokem je nahrání ukázkových dat ze souboru dvdrental.tar.
# Přesun do složky se zálohou
cd SQL

# Spuštění obnovy databáze
pg_restore -h localhost -U "100ky" -d skoleni_db -v dvdrental.tar


✅ Hotovo! Vaše základní prostředí je kompletně připraveno.
✨ Doporučené rozšíření (VS Code)
Pro pohodlnější práci si nainstalujte rozšíření, které vám umožní graficky procházet databázi.
1. Instalace
V levém panelu VS Code klikněte na ikonu Extensions (čtyři čtverečky).
Do vyhledávacího pole napište PostgreSQL.
Najděte rozšíření od Chris Kolkman a klikněte na Install.
2. Připojení k databázi
V levém panelu se objeví nová ikona slona (PostgreSQL Explorer). Klikněte na ni.
Klikněte na ikonu + pro přidání nového připojení.
Postupně vyplňte formulář:
Hostname: localhost (nebo 127.0.0.1)
User: 100ky (bez uvozovek)
Password: Ovladac23
Port: 5432
SSL Connection: Standard Connection
Database to connect to: skoleni_db
Display Name: Moje Skoleni DB (nebo jakýkoliv vlastní název)
Po potvrzení se vám v panelu zobrazí připojená databáze se všemi tabulkami.
▶️ Běžné spuštění (pro každý další den)
Pokud jste Codespace jen zastavili, vaše data zůstala zachována. Stačí jen nastartovat službu a připojit se.
1. Spuštění služby PostgreSQL
Ověřte, zda služba běží. Pokud ne (inactive), spusťte ji.
sudo service postgresql status
sudo service postgresql start


2. Připojení k databázi v terminálu
Připojte se ke své databázi skoleni_db pod svým účtem.
psql -h localhost -U "100ky" -d skoleni_db


Budete vyzváni k zadání hesla. Po jeho zadání můžete začít pracovat.
💡 Užitečné příkazy v psql
\dt - Vypíše všechny tabulky v aktuální databázi.
\l - Vypíše seznam všech databází na serveru.
\c [jmeno_databaze] - Připojí se k jiné databázi.
\q - Ukončí psql a vrátí vás do běžného terminálu.
📌 Důležité poznámky
Zadávání hesla: Při psaní hesla v terminálu se z bezpečnostních důvodů nic nezobrazuje. Stačí heslo napsat a stisknout Enter.
Ukončení práce: Po skončení práce vždy ukončete Codespace, abyste zbytečně nečerpal volné hodiny (Vlevo dole Codespaces -> Stop Current Codespace).

propojení databáze 
PostgreSQL: Set Active Connection
sudo service postgresql start


kl. zkratky
editorTextFocus && editorLangId == 'sql'