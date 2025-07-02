<template>
  <Head title="Inertia + Vite Ruby + Vue Example" />

<v-card
  loading
  title="Card title"
  subtitle="Subtitle"
  text="..."
  variant="tonal"
>
  <v-card-actions>
    <v-btn>Click me</v-btn>
  </v-card-actions>
</v-card>
</template>

<script setup>
import { Head } from '@inertiajs/vue3'
import { ref } from 'vue'
import { VCard, VCardActions, VBtn } from 'vuetify/components'
defineProps({
  name: String,
})

const count = ref(0)
</script>

<style scoped>
.root {
  font-family: Inter, system-ui, Avenir, Helvetica, Arial, sans-serif;
  line-height: 1.5;
  font-weight: 400;
  color: #213547;
  background-color: #ffffff;
  max-width: 1280px;
  margin: 0 auto;
  padding: 2rem;
  text-align: center;
}

.h1 {
  font-size: 3.2em;
  line-height: 1.1;
}

.h2 {
  font-size: 2.6em;
  line-height: 1.1;
}

.button {
  border-radius: 8px;
  border: 1px solid transparent;
  padding: 0.6em 1.2em;
  font-size: 1em;
  font-weight: 500;
  font-family: inherit;
  background-color: #f9f9f9;
  cursor: pointer;
  transition: border-color 0.25s;
}
.button:hover {
  border-color: #646cff;
}
.button:focus,
.button:focus-visible {
  outline: 4px auto -webkit-focus-ring-color;
}

.logo {
  display: inline-block;
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vite:hover {
  filter: drop-shadow(0 0 2em #e4023baa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #41b883aa);
}

.card {
  padding: 2em;
}

.readTheDocs {
  color: #888;
}
</style>
