# Estratégia de Branches - Amethpay

## Visão Geral

Este projeto utiliza o modelo **Git Flow** para gerenciar branches. Cada branch tem um propósito específico e segue convenções claras.

```
                        main (Produção)
                          ↓
                    [Releases Estáveis]
                          ↓
        ┌─────────────────┼─────────────────┐
        ↓                 ↓                 ↓
    develop          flutterflow        hotfix/*
  (Próxima         (Sincronização      (Correções
   Versão)         FlutterFlow)        Urgentes)
```

---

## Branches Principais

### 1. `main` (Produção)

**Propósito:** Código pronto para produção

**Características:**
- ✅ Sempre estável e testado
- ✅ Contém releases oficiais
- ✅ Protegida contra commits diretos
- ✅ Apenas merges de `develop` ou `hotfix`

**Quando usar:**
- Releases oficiais
- Código que está em produção
- Versões estáveis

**Exemplo de commit:**
```
v1.0.0 - Release inicial
v1.0.1 - Hotfix crítico
v1.1.0 - Nova versão
```

---

### 2. `develop` (Desenvolvimento)

**Propósito:** Integração de novas features

**Características:**
- ✅ Código em desenvolvimento ativo
- ✅ Próxima versão do projeto
- ✅ Merge de features e bugfixes
- ✅ Testado antes de ir para `main`

**Quando usar:**
- Desenvolvimento diário
- Integração de features
- Testes antes de release

**Fluxo:**
```
feature/nova-funcionalidade
        ↓
    Pull Request
        ↓
    Code Review
        ↓
    Merge → develop
```

---

### 3. `flutterflow` (Sincronização)

**Propósito:** Sincronização automática com FlutterFlow

**Características:**
- ✅ Criada automaticamente pelo FlutterFlow
- ✅ Contém mudanças do FlutterFlow
- ✅ Separada do código principal
- ✅ Pode ser mergeada em `develop`

**Quando usar:**
- Edições feitas no FlutterFlow
- Sincronização automática
- Pull Requests para revisar mudanças

**Fluxo:**
```
Edita no FlutterFlow
        ↓
Push to Repository
        ↓
Cria commit em flutterflow
        ↓
Pull Request → develop
        ↓
Code Review
        ↓
Merge
```

---

## Branches de Suporte

### 4. `feature/*` (Novas Funcionalidades)

**Convenção de nome:** `feature/descricao-da-feature`

**Exemplos:**
- `feature/payment-system`
- `feature/user-authentication`
- `feature/crypto-wallet`

**Processo:**
```bash
# Criar a branch
git checkout -b feature/minha-feature develop

# Fazer commits
git commit -m "feat: adicionar nova funcionalidade"

# Fazer push
git push -u origin feature/minha-feature

# Criar Pull Request para develop
```

---

### 5. `bugfix/*` (Correção de Bugs)

**Convenção de nome:** `bugfix/descricao-do-bug`

**Exemplos:**
- `bugfix/login-crash`
- `bugfix/payment-validation`
- `bugfix/notification-delay`

**Processo:**
```bash
# Criar a branch
git checkout -b bugfix/meu-bug develop

# Fazer commits
git commit -m "fix: corrigir erro de login"

# Fazer push
git push -u origin bugfix/meu-bug

# Criar Pull Request para develop
```

---

### 6. `hotfix/*` (Correções Urgentes)

**Convenção de nome:** `hotfix/descricao-do-hotfix`

**Exemplos:**
- `hotfix/security-patch`
- `hotfix/critical-crash`
- `hotfix/payment-error`

**Processo:**
```bash
# Criar a branch A PARTIR DE MAIN
git checkout -b hotfix/meu-hotfix main

# Fazer commits
git commit -m "hotfix: corrigir erro crítico"

# Fazer push
git push -u origin hotfix/meu-hotfix

# Criar Pull Request para main E develop
```

---

## Fluxo de Trabalho Completo

### Cenário 1: Desenvolvendo uma Nova Feature

```
1. Criar branch
   git checkout -b feature/nova-funcionalidade develop

2. Fazer mudanças e commits
   git commit -m "feat: adicionar componente X"

3. Fazer push
   git push -u origin feature/nova-funcionalidade

4. Criar Pull Request no GitHub
   - Base: develop
   - Compare: feature/nova-funcionalidade

5. Code Review e Merge
   - Revisar mudanças
   - Clicar em "Merge Pull Request"

6. Deletar branch
   git branch -d feature/nova-funcionalidade
```

### Cenário 2: Corrigindo um Bug

```
1. Criar branch
   git checkout -b bugfix/erro-login develop

2. Fazer mudanças e commits
   git commit -m "fix: corrigir validação de email"

3. Fazer push
   git push -u origin bugfix/erro-login

4. Criar Pull Request
   - Base: develop
   - Compare: bugfix/erro-login

5. Merge após aprovação
```

### Cenário 3: Hotfix Crítico

```
1. Criar branch A PARTIR DE MAIN
   git checkout -b hotfix/seguranca main

2. Fazer mudanças
   git commit -m "hotfix: corrigir vulnerabilidade"

3. Fazer push
   git push -u origin hotfix/seguranca

4. Criar TWO Pull Requests
   - PR 1: hotfix/seguranca → main
   - PR 2: hotfix/seguranca → develop

5. Merge em ambas
```

---

## Convenções de Commit

Use mensagens claras seguindo este padrão:

```
<tipo>: <descrição curta>

<descrição detalhada (opcional)>
```

### Tipos de Commit

| Tipo | Descrição | Exemplo |
| :--- | :--- | :--- |
| `feat` | Nova funcionalidade | `feat: adicionar login com Google` |
| `fix` | Correção de bug | `fix: corrigir crash ao fazer login` |
| `refactor` | Refatoração de código | `refactor: reorganizar componentes` |
| `style` | Formatação/estilo | `style: ajustar indentação` |
| `docs` | Documentação | `docs: atualizar README` |
| `test` | Testes | `test: adicionar testes de login` |
| `chore` | Manutenção | `chore: atualizar dependências` |
| `security` | Segurança | `security: remover credenciais` |

### Exemplos

```
feat: implementar sistema de pagamento com Stripe

- Adicionar integração com API Stripe
- Criar componente de formulário de pagamento
- Adicionar validação de cartão

fix: corrigir erro de autenticação

Problema: Usuários não conseguiam fazer login
Solução: Atualizar validação de token JWT

refactor: simplificar lógica de autenticação

- Remover código duplicado
- Extrair validação em função reutilizável
```

---

## Proteção de Branches

### Regras para `main`

- ✅ Requer Pull Request para merge
- ✅ Requer aprovação de pelo menos 1 revisor
- ✅ Requer que testes passem
- ✅ Não permite force push
- ✅ Não permite deletar a branch

### Regras para `develop`

- ✅ Requer Pull Request para merge
- ✅ Requer aprovação de pelo menos 1 revisor
- ✅ Não permite force push

---

## Dicas e Boas Práticas

### ✅ Faça

- ✅ Crie branches para cada feature/bug
- ✅ Use nomes descritivos
- ✅ Faça commits pequenos e focados
- ✅ Escreva mensagens de commit claras
- ✅ Faça Pull Request para revisar mudanças
- ✅ Delete branches após merge
- ✅ Mantenha `main` sempre estável
- ✅ Sincronize regularmente com `develop`

### ❌ Não Faça

- ❌ Não faça commits diretos em `main`
- ❌ Não misture múltiplas features em uma branch
- ❌ Não use nomes genéricos (ex: `fix`, `update`)
- ❌ Não force push em branches compartilhadas
- ❌ Não delete `main` ou `develop`
- ❌ Não ignore conflitos de merge

---

## Sincronização com FlutterFlow

### Fluxo Recomendado

```
1. Edita no FlutterFlow
   ↓
2. Clica "Push to Repository"
   ↓
3. FlutterFlow cria commit em flutterflow
   ↓
4. Você revisa as mudanças no GitHub
   ↓
5. Cria Pull Request: flutterflow → develop
   ↓
6. Merge após aprovação
   ↓
7. Mudanças estão em develop
```

---

## Referências

- [Git Flow Cheatsheet](https://danielkummer.github.io/git-flow-cheatsheet/)
- [GitHub Flow Guide](https://guides.github.com/introduction/flow/)
- [Conventional Commits](https://www.conventionalcommits.org/)

---

**Última atualização:** 09 de Dezembro de 2025  
**Status:** ✅ Configuração Completa
