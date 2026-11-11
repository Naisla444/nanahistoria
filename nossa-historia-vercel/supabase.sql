-- Troque SEU_EMAIL pelo seu e-mail (o mesmo do config.js) nas 2 linhas abaixo e rode no SQL Editor do Supabase.
create table items(col text not null, id text not null, data jsonb not null, primary key(col,id));
alter table items enable row level security;
create policy "logados leem" on items for select to authenticated using (true);
create policy "admin escreve" on items for all to authenticated
  using ((auth.jwt()->>'email')='SEU_EMAIL') with check ((auth.jwt()->>'email')='SEU_EMAIL');
insert into storage.buckets(id,name,public) values('fotos','fotos',true) on conflict do nothing;
create policy "admin envia fotos" on storage.objects for insert to authenticated
  with check (bucket_id='fotos' and (auth.jwt()->>'email')='SEU_EMAIL');
create policy "admin apaga fotos" on storage.objects for delete to authenticated
  using (bucket_id='fotos' and (auth.jwt()->>'email')='SEU_EMAIL');
