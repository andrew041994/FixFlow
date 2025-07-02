<template>
  <DefaultLayout>
    <v-container class="pa-4">
      <h1 class="text-h5 mb-4">Welcome {{ user.email }}</h1>
      <p>User ID: {{ user.id }}</p>
    </v-container>
  </DefaultLayout>
</template>

<script setup>
const props = defineProps({
  user: Object
})
</script>
