# 📍 Stradario Santa Croce - Guida Setup

Webapp semplice per cercare strade di Santa Croce con possibilità di aggiungere/modificare/eliminare (solo con password).

---

## 🚀 Passo 1: Crea un Nuovo Progetto Supabase

Ogni app ha il suo progetto Supabase separato.

### 1.1 Accedi a Supabase
- Vai su https://app.supabase.com
- Accedi con il tuo account

### 1.2 Crea un nuovo progetto
- Clicca **New project**
- **Organization:** (seleziona quello che usi per Spesa)
- **Name:** `Stradario Santa Croce` (o quello che vuoi)
- **Database Password:** Crea una password (es: `Strad1234!`)
- **Region:** `Europe (Frankfurt)` (come Spesa)
- Clicca **Create new project**
- ⏳ Aspetta 2-3 minuti che si crei

✅ Il progetto è pronto!

### 1.3 Prendi le credenziali
Nel nuovo progetto Supabase:
- **Project Settings** (ingranaggio in basso a sinistra)
- **API** (a sinistra)
- Copia questi due dati:
  - **Project URL** (es: `https://xyz.supabase.co`)
  - **Anon public key** (la chiave lunga sotto "anon public")

Tienili da parte, ti serviranno tra poco!

### 1.4 Crea la tabella delle strade
- Nel nuovo progetto, vai su **SQL Editor** (a sinistra)
- Clicca **New Query**
- Copia il contenuto del file `setup-database.sql`
- Incolla nella query e clicca **Run**

✅ La tabella `strade` è creata!

---

## 🚀 Passo 2: Importa i dati (1.332 strade)

### 2.1 Apri il file strade.csv
- Scarica il file `strade.csv` (non è incluso, dovrai crearlo)
- Oppure usa il file Excel originale

### 2.2 Importa in Supabase
- Nel progetto Supabase, vai su **Table Editor**
- Clicca sulla tabella `strade`
- Clicca il pulsante **Insert** > **Insert from CSV**
- Seleziona il file e clicca **Upload**

✅ Tutte le 1.332 strade sono nel database!

---

## 🔐 Passo 3: Cambia la Password Admin

Nel file `index.html`, cerca questa riga (circa riga 380):
```javascript
const ADMIN_PASSWORD = "password123"; // Cambiare in seguito!
```

Cambia `"password123"` con una password sicura, ad es:
```javascript
const ADMIN_PASSWORD = "MiaPassword2024";
```

**Salva il file.**

---

## 🌐 Passo 4: Testa Localmente (Opzionale)

Puoi testare l'app nel tuo computer:
1. Apri il file `index.html` con il browser
2. Prova a cercare una strada (es: "abruzzi")
3. Clicca sul menù ☰ e prova ➕ Nuova Via
4. Inserisci la password che hai impostato

---

## 📤 Passo 5: Pubblica su Netlify

Quando sei pronto a mettere online:

### 5.1 Accedi a Netlify
- Vai su https://app.netlify.com
- Accedi (stesso account usato per Spesa)

### 5.2 Crea un nuovo sito
- Clicca **Add new site** > **Deploy manually**
- **Drag and drop** il file `index.html` nel riquadro
- Netlify genera un URL (es: `https://blablabla.netlify.app`)

✅ La webapp è online!

### 5.3 Aggiornamenti futuri
Se modifichi `index.html` (password, colori, ecc.):
1. Apri il sito Netlify
2. Drag and drop il nuovo `index.html` nel riquadro
3. Netlify aggiorna il sito in pochi secondi

---

## 🎨 Personalizzazioni (Opzionali)

### Cambia il titolo
Cerca `<title>Stradario Santa Croce</title>` (riga 4) e cambia il testo.

### Cambia la password admin
Come spiegato al Passo 3.

### Cambia il colore dei bottoni
Cerca `.btn-primary { background: #d4af37;` e cambia il colore hex.

---

## ❓ Domande Frequenti

**D: Come aggiungo una nuova strada?**
A: Clicca il menù ☰, poi ➕ Nuova Via. Inserisci password. Compila i campi e salva.

**D: Come cambio la password admin?**
A: Apri `index.html` con un editor di testo e cambia la riga con `ADMIN_PASSWORD`.

**D: Come esporto tutte le strade?**
A: Clicca menù ☰ > 📊 Esporta Excel. Scarica il CSV.

**D: La ricerca non funziona.**
A: Controlla che il database Supabase sia configurato correttamente (Passo 1).

---

## 📞 Note

- **Strade caricate:** 1.332 da STRADARIO LIBRO SANTA CROCE.xlsx
- **Città supportate:** Santa Croce, Castelfranco, San Miniato, Fucecchio, Montopoli
- **Browser supportati:** Chrome, Firefox, Safari, Edge (moderni)
- **Storage:** Tutto nel database Supabase (online)

Buon lavoro! 🚀
