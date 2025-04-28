<!--- cSpell:disable --->
# BriggesDecoration - Mobile

Aplicación móvil desarrollada en **React Native + Expo + TypeScript**, utilizando **Google Authentication** y **Google Drive** como sistema de almacenamiento en la nube.  
Configurada para un entorno de desarrollo moderno usando **DevContainers**, **Docker** y automatizaciones con **Makefile**.

---

## 🚀 Tecnologías

- React Native + Expo
- TypeScript
- Firebase Authentication (Google Sign-In)
- Google Drive API
- VSCode Dev Containers
- Docker
- Makefile

---

## 📦 Estructura del Proyecto

```
CortinasApp/
├── .devcontainer/
│   ├── devcontainer.json
│   └── Dockerfile
├── .vscode/
│   ├── tasks.json
│   └── launch.json
├── app/
├── package.json
├── tsconfig.json
├── Makefile
└── README.md
```

---

## 🛠️ Requerimientos Previos

- [Docker](https://www.docker.com/) instalado y corriendo.
- [VSCode](https://code.visualstudio.com/) instalado.
- Extensión **Dev Containers** en VSCode: [Dev Containers - Marketplace](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).

---

## 🛠️ Primeros Pasos

### 1. Clonar el proyecto

```bash
git clone https://github.com/tuusuario/cortinas-app.git
cd cortinas-app
```

### 2. Abrir el proyecto en VSCode como **DevContainer**

- Abre el proyecto en VSCode.
- Ejecuta `Ctrl+Shift+P → Dev Containers: Reopen in Container`.

Esto montará automáticamente el contenedor con Node.js, Expo CLI, y todas las extensiones necesarias.

### 3. Instalar dependencias (opcional)

```bash
make install
```

---

## 🔥 Uso de Makefile

Puedes automatizar acciones comunes:

| Comando | Descripción |
|:---|:---|
| `make start` | Inicia el servidor de desarrollo de Expo (modo tunnel). |
| `make android` | Ejecuta la app en un dispositivo Android conectado. |
| `make build-apk` | Compila un APK usando EAS Build para pruebas. |
| `make install` | Instala las dependencias de npm. |
| `make clean` | Elimina `node_modules` y reinstala dependencias. |
| `make help` | Muestra todos los comandos disponibles. |

Ejemplo:

```bash
make start
```

---

## 🚧 Configuración de Firebase Authentication (Google Sign-In)

1. Crea un proyecto en [Firebase Console](https://console.firebase.google.com/).
2. Habilita **Authentication > Google**.
3. Configura tu aplicación móvil (Android/iOS) en el proyecto.
4. Obtén el archivo de configuración `google-services.json` para Android o los valores para iOS.
5. Usa `expo-auth-session` o `expo-google-auth-session` para implementar el flujo.

---

## ☁️ Configuración de Acceso a Google Drive

1. Crea un proyecto en [Google Cloud Console](https://console.cloud.google.com/).
2. Habilita la **Google Drive API**.
3. Crea credenciales OAuth 2.0.
4. Configura los `scopes` necesarios:
   - `https://www.googleapis.com/auth/drive.file`
5. Utiliza `expo-auth-session` para autenticar y acceder a los archivos de Drive.

---

## 📄 Variables de Entorno

Crea un archivo `.env` en la raíz del proyecto:

```dotenv
GOOGLE_CLIENT_ID=tu-client-id.apps.googleusercontent.com
GOOGLE_CLIENT_SECRET=tu-client-secret
FIREBASE_API_KEY=...
FIREBASE_AUTH_DOMAIN=...
```

Utiliza la librería [react-native-dotenv](https://www.npmjs.com/package/react-native-dotenv) o directamente las variables de Expo.

---

## 📱 Flujo de la Aplicación

- **Registro/Login:** con cuenta de Google.
- **Lista de Clientes:** visualizar clientes registrados.
- **Lista de Productos:** catálogo disponible.
- **Registro de Compras:** asociar productos comprados por cliente.
- **Generador de Cuentas de Cobro:** visualizar o exportar recibos.

Toda la información se guarda en un **archivo JSON sincronizado en Google Drive**.

---

## 📃 Comandos rápidos (VSCode)

También puedes usar `Ctrl+Shift+P → Run Task` en VSCode para:

- Start Expo
- Build APK (EAS)
- Install Dependencies

---

## 📚 Referencias

- [Expo Documentation](https://docs.expo.dev/)
- [Firebase Authentication Docs](https://firebase.google.com/docs/auth)
- [Google Drive API Documentation](https://developers.google.com/drive)
- [Development Containers Spec](https://containers.dev/)

---

## ✅ Estado Actual

- [x] DevContainer listo con Node.js, Expo CLI y utilidades.
- [x] Proyecto base en Expo + TypeScript.
- [x] Dockerizado completamente.
- [x] Makefile de automatización.
- [x] Configuración de tareas y depuración en VSCode.

---

## 🚀 Autor

Hecho con ❤️ por **Alejsherion**.