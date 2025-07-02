<template>
  <Head title="Login" />
  <v-container class="fill-height d-flex align-center justify-center px-4">
    <v-card max-width="420" class="w-100" elevation="2">
      <v-card-title class="justify-center text-h6">Sign in to FixFlow</v-card-title>
      <v-card-text>
        <v-form @submit.prevent="submit" data-turbo="false" class="d-flex flex-column">
          <v-text-field
            v-model="form.user.email"
            label="Email"
            type="email"
            outlined
            required
            class="mb-3"
          />
          <v-text-field
            v-model="form.user.password"
            label="Password"
            type="password"
            outlined
            required
            class="mb-4"
          />
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
