# Café Stock Tracker

Single-page stock tracker for three café outlets (Orchard, Jurong, Tampines). Data lives in Supabase (`stock_counts` table); the app is a static `index.html` with no build step.

## Deploy to Vercel
1. Import this repo at https://vercel.com/new
2. Framework preset: **Other**; leave build command and output directory empty.
3. Deploy.

## Supabase
- `schema.sql` is the original table definition. The app also expects a `category` column and anon select/update policies (already applied in the project).
- The page uses the project URL and publishable (anon) key inline in `index.html`. Anyone with the site URL can read and edit stock; add Supabase Auth if the site is shared beyond your team.
