<template>
  <v-app>
    <v-main class="d-flex align-center justify-center" style="height:100vh;">
      <v-card class="pa-8" width="400" rounded="xl">
        <v-card-title class="text-h5">Login</v-card-title>
        <v-card-text>
          <v-form @submit.prevent="submit">
            <v-text-field v-model="form.email" label="Email" type="email" required></v-text-field>
            <v-text-field v-model="form.password" label="Password" type="password" required></v-text-field>
            <v-btn type="submit" color="primary" class="mt-4" block>Sign in</v-btn>
          </v-form>
        </v-card-text>
      </v-card>
    </v-main>
  </v-app>
</template>

<script setup>
import { useForm } from '@inertiajs/vue3'

const form = useForm({
  user: {
    email: '',
    password: ''
  }
})

function submit() {
  form.post('/users/sign_in')
}
</script>
