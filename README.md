# enterijer.rs — Obsidian Vault

Centralna baza znanja i content management sistem za projekat enterijer.rs.

## Struktura
Pogledaj `00 - START HERE.md` za punu mapu.

## Kako koristiti
1. Otvori ovaj folder kao Obsidian vault
2. Piši/generiši u `03 - BAZA ZNANJA/`
3. Odobren sadržaj ide u `04 - PROIZVOD/SADRZAJ/`
4. `scripts/sync-to-hugo.sh` → sync na Hugo repozitorijum
5. Git push → Cloudflare deploy

## Scripts
- `new-content.sh <slug> <title>` — kreira novi markdown
- `sync-to-hugo.sh` — sinhronizuje vault sadržaj u Hugo sajt

## Docker
```bash
docker-compose up -d
```
