# Assistente Rural

Este é um aplicativo Blazor WebAssembly para agricultores brasileiros, com um conversor de unidades moderno e pronto para ser hospedado no GitHub Pages.

## Funcionalidades
- Conversor de Unidades (kg, arroba, tonelada)
- Interface moderna e responsiva
- Totalmente em português (pt-BR)

## Como publicar no GitHub Pages
1. Execute `dotnet publish -c Release`.
2. Copie o conteúdo da pasta `bin/Release/net8.0/publish/wwwroot` para o branch `gh-pages` do seu repositório GitHub.
3. Configure o GitHub Pages para servir a partir do branch `gh-pages`.

## Como rodar localmente
```bash
dotnet run
```

Acesse [http://localhost:5000](http://localhost:5000) no navegador.
