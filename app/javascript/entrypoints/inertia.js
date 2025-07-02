import { createInertiaApp } from '@inertiajs/vue3'
import { createApp, h } from 'vue'
// import tailwindcss from "@tailwindcss/vite";
import 'vuetify/styles'
import { createVuetify } from 'vuetify'
import {
  VApp,
  VAppBar,
  VBtn,
  VIcon,
  VDialog,
  VMain
} from 'vuetify/components'
import Layout from '../layouts/Layout.vue'

const vuetify = createVuetify({
  components: {
    VApp,
    VAppBar,
    VBtn,
    VIcon,
    VDialog,
    VMain
  },

  icons: {
    iconfont: 'mdi', // Specify the icon font to use
  },
})
createInertiaApp({
  // Set default page title
  // see https://inertia-rails.dev/guide/title-and-meta
  //
  // title: title => title ? `${title} - App` : 'App',

  // Disable progress bar
  //
  // see https://inertia-rails.dev/guide/progress-indicators
  // progress: false,

  resolve: (name) => {
    const pages = import.meta.glob('../pages/**/*.vue', {
      eager: true,
    })
    const page = pages[`../pages/${name}.vue`]
    page.default.layout = page.default.layout || Layout
    return page
  },

  setup({ el, App, props, plugin }) {
    createApp({ render: () => h(App, props) })
      .use(plugin)
      .use(vuetify)
      .mount(el)
  },
})
