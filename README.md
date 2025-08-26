# Angular Microfrontend Monorepo

Este monorepo contiene una aplicación Angular con arquitectura de microfrontends usando **Native Federation**.

## 📁 Estructura del proyecto

```
angular-microfrontend-monorepo/
├── apps/
│   ├── host-app/           # Aplicación host/shell (puerto 4200)
│   ├── micro-frontend-1/   # Microfrontend 1 (puerto 4201)
│   └── micro-frontend-2/   # Microfrontend 2 (puerto 4202)
├── scripts/                # Scripts de ayuda
├── package.json            # Configuración global del monorepo
└── README.md
```

## 🚀 Inicio rápido

```bash
# 1. Instalar dependencias en todos los proyectos
npm run install:all

# 2. Ejecutar todos los proyectos en modo desarrollo
npm start

# 3. Abrir http://localhost:4200 para ver la aplicación
```

## 📋 Comandos disponibles

### 🔧 Instalación y setup
```bash
npm run install:all    # Instalar deps en todos los proyectos
npm run reinstall      # Limpiar y reinstalar todo
npm run clean          # Limpiar dist y node_modules
```

### 🚀 Desarrollo
```bash
npm start              # Todos los proyectos (equivale a dev:all)
npm run dev:all        # Todos los proyectos con colores
npm run start:host     # Solo host (puerto 4200)
npm run start:mf1      # Solo microfrontend-1 (puerto 4201)
npm run start:mf2      # Solo microfrontend-2 (puerto 4202)
npm run dev:mf1        # Host + MF1 solamente
npm run dev:mf2        # Host + MF2 solamente
```

### 🏗️ Build
```bash
npm run build          # Build de todos (equivale a build:all)
npm run build:all      # Build en orden correcto (MFs primero, luego host)
npm run build:host     # Solo construir host
npm run build:mf1      # Solo construir MF1
npm run build:mf2      # Solo construir MF2
```

### 🧪 Testing
```bash
npm test               # Tests de todos los proyectos
npm run test:host      # Tests solo del host
npm run test:mf1       # Tests solo de MF1
npm run test:mf2       # Tests solo de MF2
```

### 🔍 Linting (si está configurado)
```bash
npm run lint:all       # Lint de todos los proyectos
npm run lint:host      # Lint solo del host
npm run lint:mf1       # Lint solo de MF1
npm run lint:mf2       # Lint solo de MF2
```

## 🏗️ Arquitectura

### Native Federation
Este proyecto utiliza **@angular-architects/native-federation** en lugar de Module Federation tradicional, que ofrece:
- Mejor performance
- Configuración más sencilla
- Compatibilidad nativa con Angular

### Componentes principales
- **host-app**: Aplicación shell que orquesta y carga los microfrontends
- **micro-frontend-1**: Primer microfrontend independiente
- **micro-frontend-2**: Segundo microfrontend independiente

## 🔄 Workflow de desarrollo

1. **Desarrollo individual**: Cada microfrontend puede desarrollarse por separado
2. **Testing integrado**: El host puede cargar y testear todos los MFs
3. **Build independiente**: Cada proyecto se puede construir de forma independiente
4. **Deploy separado**: Cada microfrontend se puede desplegar en diferentes servidores

## 🐛 Debugging

Si los microfrontends no cargan:
1. Verificar que todos estén corriendo en sus puertos asignados
2. Revisar la configuración de Native Federation en cada proyecto
3. Comprobar las rutas en el host-app

## 🚦 Puertos por defecto

- **Host**: http://localhost:4200
- **Microfrontend 1**: http://localhost:4201  
- **Microfrontend 2**: http://localhost:4202

## 📝 Notas

- Este es un **monorepo simple** (un solo repositorio Git)
- Todos los commits afectan al monorepo completo
- Las dependencias se manejan por proyecto individual
- Usa `concurrently` para ejecutar múltiples comandos en paralelo