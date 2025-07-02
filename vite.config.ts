import vue from '@vitejs/plugin-vue'
import { defineConfig } from 'vite'
import RubyPlugin from 'vite-plugin-ruby'
import vuetify from 'vite-plugin-vuetify'

export default defineConfig({
  plugins: [
    vue(),
    RubyPlugin(),
    vuetify({ autoImport: true }),
  ],
})
