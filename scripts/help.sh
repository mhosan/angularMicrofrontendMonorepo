#!/bin/bash

# Scripts de ayuda para el monorepo
# Ejecutar con: npm run <script-name>

case "$1" in
  "help")
    echo "📦 Angular Microfrontend Monorepo - Scripts Disponibles:"
    echo ""
    echo "🚀 DESARROLLO:"
    echo "  npm start              - Iniciar todos los proyectos en paralelo"
    echo "  npm run start:host     - Solo el host (puerto 4200)"
    echo "  npm run start:mf1      - Solo microfrontend-1 (puerto 4201)"
    echo "  npm run start:mf2      - Solo microfrontend-2 (puerto 4202)"
    echo "  npm run dev:mf1        - Host + MF1"
    echo "  npm run dev:mf2        - Host + MF2"
    echo ""
    echo "🏗️  BUILD:"
    echo "  npm run build          - Construir todos los proyectos"
    echo "  npm run build:host     - Solo construir host"
    echo "  npm run build:mf1      - Solo construir MF1"
    echo "  npm run build:mf2      - Solo construir MF2"
    echo ""
    echo "🧪 TESTING:"
    echo "  npm test               - Ejecutar tests de todos"
    echo "  npm run test:host      - Tests solo del host"
    echo "  npm run test:mf1       - Tests solo de MF1"
    echo "  npm run test:mf2       - Tests solo de MF2"
    echo ""
    echo "🔧 MANTENIMIENTO:"
    echo "  npm run install:all    - Instalar deps en todos los proyectos"
    echo "  npm run clean          - Limpiar todo"
    echo "  npm run reinstall      - Limpiar y reinstalar todo"
    echo ""
    ;;
  *)
    echo "Uso: npm run help"
    ;;
esac