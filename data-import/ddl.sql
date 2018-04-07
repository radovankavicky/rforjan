-- DROP TABLE apa_ziadosti_o_projektove_podpory;
CREATE TABLE IF NOT EXISTS apa_ziadosti_o_projektove_podpory (
  id                       SERIAL,
  ziadatel                 TEXT,
  ico                      TEXT,
  kod_projektu             TEXT,
  nazov_projektu           TEXT,
  vuc                      TEXT,
  cislo_vyzvy              TEXT,
  kod_podopatrenia         TEXT,
  status                   TEXT,
  datum_zastavenia_konania TIMESTAMP,
  dovod_zastavenie_konania TEXT,
  datum_ucinnosti_zmluvy   TIMESTAMP,
  schvaleny_nfp_celkom     DECIMAL,
  vyplateny_nfp_celkom     DECIMAL,
  pocet_bodov              INTEGER
);

-- DROP TABLE apa_prijimatelia;
CREATE TABLE IF NOT EXISTS apa_prijimatelia (
  id                       SERIAL,
  url                      TEXT,
  meno                     TEXT,
  psc                      TEXT,
  obec                     TEXT,
  opatrenie                TEXT,
  opatrenie_kod            TEXT,
  suma                     DECIMAL,
  rok                      INTEGER
);

-- DROP TABLE apa_ziadosti_o_priame_podpory;
CREATE TABLE IF NOT EXISTS apa_ziadosti_o_priame_podpory (
  id                       SERIAL,
  ziadatel                 TEXT,
  url                      TEXT,
  ico                      TEXT,
  rok                      INTEGER,
  ziadosti                 TEXT
);

-- DROP TABLE apa_ziadosti_o_priame_podpory_diely;
CREATE TABLE IF NOT EXISTS apa_ziadosti_o_priame_podpory_diely (
  id                       SERIAL,
  url                      TEXT,
  ziadatel                 TEXT,
  ico                      TEXT,
  rok                      INTEGER,
  lokalita                 TEXT,
  diel                     TEXT,
  kultura                  TEXT,
  vymera                   DECIMAL,
  ziadatel_normalized      TEXT
);

-- DROP TABLE crp_projekty;
CREATE TABLE IF NOT EXISTS crp_projekty (
  id                       SERIAL,
  url                      TEXT,
  nazov                    TEXT,
  datum_zverejnenia        TIMESTAMP,
  datum_zacatia            TIMESTAMP,
  datum_ukoncenia          TIMESTAMP,
  prijimatel               TEXT,
  ico_prijmatela           TEXT,
  miesto_realizacie        TEXT,
  poskytovatel             TEXT,
  typ_poskytnutej_pomoci   TEXT,
  crp_id                   TEXT,
  vyska_pomoci             TEXT,
  vyska_pomoci_num         DECIMAL
);

-- DROP TABLE crp_zmluvy;
CREATE TABLE IF NOT EXISTS crp_zmluvy (
  id                       SERIAL,
  crp_id                   TEXT,
  url                      TEXT,
  nazov                    TEXT,
  obstaravatel_nazov       TEXT,
  obstaravatel_ic          TEXT,
  dodavatel_nazov          TEXT,
  dodavatel_ico            TEXT,
  dodavatel_adresa         TEXT,
  nazov_zmluvy             TEXT,
  datum_uzavretia          TIMESTAMP,
  datum_ucinnosti          TIMESTAMP,
  poznamka_k_ucinnosti     TEXT,
  datum_platnosti          TIMESTAMP,
  suma_s_dph               TEXT,
  poznamka                 TEXT,
  prilohy_url              TEXT,
  prilohy_nazvy            TEXT,
  prilohy_subory           TEXT,
  interne_id               TEXT,
  datum_zverejnenia        TIMESTAMP,
  stav                     TEXT
);
