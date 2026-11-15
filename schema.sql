create table public.stock_counts (
  id bigint generated always as identity primary key,
  outlet text not null check (outlet in ('Orchard','Jurong','Tampines')),
  sku text not null,
  item_name text not null,
  unit text not null,
  qty_on_hand integer not null check (qty_on_hand >= 0),
  reorder_level integer not null check (reorder_level >= 0),
  counted_at date not null,
  unique (outlet, sku, counted_at)
);

create index stock_counts_sku_idx on public.stock_counts (sku);
create index stock_counts_counted_at_idx on public.stock_counts (counted_at);

alter table public.stock_counts enable row level security;
