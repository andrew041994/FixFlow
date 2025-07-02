<template>
  <Head title="Login" />
  <v-container class="fill-height" justify="center" align="center">
    <v-card width="420" elevation="2">
      <v-card-title class="justify-center">Sign in to FixFlow</v-card-title>
      <v-card-text>
        <v-form @submit.prevent="submit" data-turbo="false">
          <v-text-field v-model="form.user.email" label="Email" type="email" outlined required class="mb-3" />
          <v-text-field v-model="form.user.password" label="Password" type="password" outlined required class="mb-4" />
          <v-btn type="submit" :loading="form.processing" color="primary" block>Login</v-btn>
        </v-form>
      </v-card-text>
    </v-card>
  </v-container>
</template>

<script setup>
import { Head, useForm } from '@inertiajs/vue3'

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
