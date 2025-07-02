<template>
  <Head title="Dashboard" />
  <v-container class="pa-4">
    <h1 class="text-h4 mb-4">Welcome</h1>
    <p class="text-body-1 mb-6">You are logged in as {{ user.email }}.</p>

    <v-card elevation="1" class="mb-4">
      <v-card-title class="text-h6">Tech Stack</v-card-title>
      <v-list>
        <v-list-item
          v-for="item in stack"
          :key="item.name"
          :href="item.url"
          target="_blank"
          class="hover:bg-grey-lighten-4"
        >
          <v-list-item-title>{{ item.name }}</v-list-item-title>
          <template #append>
            <v-icon size="small">mdi-open-in-new</v-icon>
          </template>
        </v-list-item>
      </v-list>
    </v-card>
  </v-container>
</template>

<script setup>
import { Head } from '@inertiajs/vue3'

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
</script>
