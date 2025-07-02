<template>
  <v-app>
    <v-main class="pa-8">
      <h1 class="text-h4 mb-4">Dashboard</h1>
      <p>Welcome, {{ userEmail }}!</p>
    </v-main>
  </v-app>
</template>

<script setup>
const props = defineProps({ userEmail: String })
</script>
