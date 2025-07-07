import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react-swc'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    host: '0.0.0.0',     // ← Accept connections from any IP
    port: 3001,
    strictPort: true,    // ← Fail fast if port is taken (optional)
    open: false,         // ← Don't auto-open browser
    cors: true,          // ← Allow cross-origin requests (API calls etc)
    watch: {
      usePolling: true,  // ← Useful in Docker/VM environments
    },
  },
})
