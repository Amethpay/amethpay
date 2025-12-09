# Segurança do Projeto Amethpay

## Variáveis de Ambiente

Este projeto utiliza variáveis de ambiente para armazenar credenciais sensíveis. **Nunca** commit credenciais reais no repositório.

### Configuração do Firebase

1. Copie o arquivo `.env.example` para `.env`:
   ```bash
   cp .env.example .env
   ```

2. Edite o arquivo `.env` e adicione suas credenciais do Firebase:
   ```
   FIREBASE_API_KEY=sua_chave_api_real
   FIREBASE_AUTH_DOMAIN=seu_dominio_autenticacao
   FIREBASE_PROJECT_ID=seu_id_projeto
   FIREBASE_STORAGE_BUCKET=seu_bucket_armazenamento
   FIREBASE_MESSAGING_SENDER_ID=seu_id_remetente
   FIREBASE_APP_ID=seu_id_aplicativo
   FIREBASE_MEASUREMENT_ID=seu_id_medicao
   ```

3. **Importante:** O arquivo `.env` está no `.gitignore` e não será commitado.

## Boas Práticas de Segurança

- ✅ Nunca commit arquivos `.env` com credenciais reais
- ✅ Use variáveis de ambiente para dados sensíveis
- ✅ Revise o `.gitignore` regularmente
- ✅ Mantenha as dependências atualizadas
- ✅ Use tokens com expiração limitada para acesso ao repositório

## Relatório de Segurança

Se encontrar uma vulnerabilidade, não abra uma issue pública. Em vez disso, entre em contato privadamente.
