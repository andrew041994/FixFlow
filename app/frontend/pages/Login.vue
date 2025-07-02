<template>
  <DefaultLayout>
    <v-container class="pa-4 max-w-md mx-auto">
      <h1 class="text-h5 mb-4">Login</h1>
      <form method="post" action="/users/sign_in">
        <input type="hidden" name="authenticity_token" :value="csrf" />
        <v-text-field label="Email" name="user[email]" v-model="form.email" required></v-text-field>
        <v-text-field label="Password" type="password" name="user[password]" v-model="form.password" required></v-text-field>
        <v-btn type="submit" class="mt-4" color="primary">Login</v-btn>
      </form>
    </v-container>
  </DefaultLayout>
</template>

<script setup>
import { ref } from 'vue'
const form = ref({ email: '', password: '' })
const csrf = document.querySelector('meta[name="csrf-token"]').getAttribute('content')
</script>
