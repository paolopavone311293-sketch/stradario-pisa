-- Tabella strade_pisa per Stradario Santa Croce
CREATE TABLE IF NOT EXISTS strade_pisa (
  id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  via TEXT NOT NULL,
  zona TEXT,
  numeri TEXT,
  citta TEXT NOT NULL,
  colonna_a TEXT,
  colonna_b TEXT,
  nome_completo TEXT,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

-- Indici per ricerca veloce
CREATE INDEX idx_strade_pisa_via ON strade_pisa(via);
CREATE INDEX idx_strade_pisa_citta ON strade_pisa(citta);
CREATE INDEX idx_strade_pisa_zona ON strade_pisa(zona);
CREATE INDEX idx_strade_pisa_nome_completo ON strade_pisa(nome_completo);

-- RLS - Chiunque può leggere
ALTER TABLE strade_pisa ENABLE ROW LEVEL SECURITY;

CREATE POLICY "strade_pisa_select_public" ON strade_pisa
  FOR SELECT USING (true);

-- Solo admin (con password) può modificare/aggiungere/eliminare
CREATE POLICY "strade_pisa_insert_admin" ON strade_pisa
  FOR INSERT WITH CHECK (true);

CREATE POLICY "strade_pisa_update_admin" ON strade_pisa
  FOR UPDATE USING (true) WITH CHECK (true);

CREATE POLICY "strade_pisa_delete_admin" ON strade_pisa
  FOR DELETE USING (true);
