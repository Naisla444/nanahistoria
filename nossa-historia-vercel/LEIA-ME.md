# Nossa História: publicar no Vercel

## 1. Supabase (banco, fotos e login) - gratuito
1. Crie uma conta em supabase.com e um projeto novo (guarde a senha do banco).
2. Menu **SQL Editor**: abra o arquivo `supabase.sql`, troque `SEU_EMAIL` pelo seu e-mail (4 lugares), cole e clique em **Run**.
3. Menu **Authentication > Users > Add user > Create new user**: crie o seu usuário e o da sua namorada (e-mail + senha), marcando **Auto Confirm User**.
4. Em **Authentication > Sign In / Providers**, desligue **Allow new users to sign up** para ninguém mais criar conta.
5. Em **Project Settings > API**, copie a **Project URL** e a chave **anon public**.

## 2. Configurar
Abra `config.js` e cole a URL, a chave e o seu e-mail em `admin`.

## 3. Vercel
- Mais fácil: suba esta pasta para um repositório no GitHub, depois em vercel.com use **Add New > Project**, escolha o repositório e clique em **Deploy** (sem mudar nada).
- Ou, no computador: `npx vercel` dentro da pasta.

## Como funciona
- Só quem tem e-mail e senha entra. Só o e-mail `admin` edita; os demais só leem.
- Fotos ficam em um balde público com nomes aleatórios impossíveis de adivinhar; ninguém acha sem o link exato.
- A chave anon pode ficar no código: quem protege os dados são as regras do SQL.
