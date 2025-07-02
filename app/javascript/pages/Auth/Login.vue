<template>
  <Head title="Login" />
  <v-container class="fill-height" justify="center" align="center">
    <v-card width="400">
      <v-card-title>Login</v-card-title>
      <v-card-text>
        <v-form @submit.prevent="submit">
          <v-text-field v-model="form.email" label="Email" type="email" required></v-text-field>
          <v-text-field v-model="form.password" label="Password" type="password" required></v-text-field>
          <v-btn type="submit" :loading="form.processing" color="primary" block>Login</v-btn>
        </v-form>
      </v-card-text>
    </v-card>
  </v-container>
</template>

<script setup>
import { Head, useForm } from '@inertiajs/vue3'

const form = useForm({
  email: '',
  password: ''
})

function submit() {
  form.post('/users/sign_in')
}
</script>
