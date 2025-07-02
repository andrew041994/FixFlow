<template>
  <Head title="Dashboard" />
  <v-container class="pa-4">
    <h1 class="text-h4 mb-4">Welcome</h1>
    <p class="text-body-1">You are logged in as {{ user.email }}.</p>
  </v-container>
</template>

<script setup>
import { Head } from '@inertiajs/vue3'
defineProps({
  user: Object
})
</script>
