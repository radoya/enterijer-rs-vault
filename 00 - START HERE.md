# 🏠 Enterijer.rs — Mapa Projekta (Vault)

## Šta je ovaj vault?
Centralni mozak projekta `enterijer.rs`. Sva znanja, izvori, eksperti, marketing sadržaj i CRM leadovi žive ovde. Hermes agent upravlja ovim vaultom i generiše sadržaj koji ide na Hugo sajt.

## Struktura
- [[01 - SISTEM]] — Konfiguracija, Hermes pipeline, deploy planovi
- [[02 - IZVORI]] — Web članci, knjige, video referenci, konkurenti
- [[03 - BAZA ZNANJA]] — Atomacne note: stilovi, boje, nameštaj, osvetljenje, majstori
- [[04 - PROIZVOD]] — Sadržaj koji ide na sajt (blog, galerije, pillar postovi)
- [[05 - EKSPERTI]] — Baza majstora, dobavljača, dizajnera sa kontaktima i ocenama
- [[06 - MARKETING]] — Viralni hukovi, Reels, YT Shorts, SEO planovi
- [[07 - CRM]] — Leadovi iz kontakt forme, statistike, kampanje
- [[08 - SINARIOS]] — Video sinariji, storyboardovi

## Proces (Pipeline)
1. **Prikupljanje**: Hermes scrape web → `02 - IZVORI/`
2. **Destilacija**: Izvor → atomacna nota u `03 - BAZA ZNANJA/`
3. **Verifikacija**: Dodaje se izvor, proverava se istinitost
4. **Proizvodnja**: Odobrena nota → `04 - PROIZVOD/` + SEO meta
5. **Sync**: `04 - PROIZVOD/` → Hugo `content/sr/blog/` → Git push → Cloudflare
6. **Marketing**: Ista nota → Reels / YT Short sinarij u `06 - MARKETING/`
7. **CRM**: Kontakt forma → Webhook → `07 - CRM/LEADOVI/YYYY-MM-DD_lead.md`

## Status
- [ ] Prvih 50 atomacnih nota u bazi znanja
- [ ] 10 pillar postova live na sajt
- [ ] Baza od 20+ eksperata
- [ ] Prvi viralni video
- [ ] 100 organic posetilaca/mesec
