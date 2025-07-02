<template>
  <Head title="Dashboard" />
  <v-app-bar color="deep-purple accent-4" dark flat>
    <v-toolbar-title class="text-h6">FixFlow</v-toolbar-title>
    <v-spacer />
    <v-btn @click="logout" variant="text" class="text-white">Logout</v-btn>
  </v-app-bar>

  <v-container class="py-10" style="background: linear-gradient(135deg,#673ab7,#512da8); min-height: calc(100vh - 64px);">
    <v-row justify="center">
      <v-col cols="12" md="8">
        <h1 class="text-h4 font-weight-medium text-white mb-6">Welcome</h1>
        <p class="text-body-1 text-white mb-8">You are logged in as {{ user.email }}.</p>

        <v-card elevation="4" class="mb-4" color="indigo-lighten-5">
          <v-card-title class="text-h6">Tech Stack</v-card-title>
          <v-list>
            <v-list-item
              v-for="item in stack"
              :key="item.name"
              :href="item.url"
              target="_blank"
              class="hover:bg-indigo-lighten-4"
            >
              <v-list-item-title>{{ item.name }}</v-list-item-title>
              <template #append>
                <v-icon size="small">mdi-open-in-new</v-icon>
              </template>
            </v-list-item>
          </v-list>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script setup>
import { Head, router } from '@inertiajs/vue3'

defineProps({
  user: Object
})

const stack = [
  { name: 'Ruby on Rails', url: 'https://rubyonrails.org' },
  { name: 'PostgreSQL', url: 'https://www.postgresql.org/docs/' },
  { name: 'Vue.js', url: 'https://vuejs.org' },
  { name: 'Vuetify', url: 'https://vuetifyjs.com' },
  { name: 'Inertia.js', url: 'https://inertiajs.com' },
  { name: 'Vite', url: 'https://vitejs.dev' },
]

function logout() {
  router.delete('/users/sign_out')
}
</script>
