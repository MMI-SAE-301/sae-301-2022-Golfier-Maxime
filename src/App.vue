<template>
  <Header></Header>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view />
  </Suspense>

  <Footer></Footer>
</template>

<script setup lang="ts">
import Header from "@/components/Header.vue";
import Footer from "@/components/Footer.vue";
</script>
