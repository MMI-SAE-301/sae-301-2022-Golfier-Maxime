<template>
  <Header></Header>
  <!-- <br>
  <hr>
  <nav>
    <h4 class="text-xl">
      menu (dans <code class="font-mono">/src/App.vue</code>)
    </h4>
    <ul>
      <li>
        <router-link class="text-red-600 underline" to="/">
          lien vers
          <code class="font-mono">/src/pages/index.vue</code>
        </router-link>
      </li>
      <li>
        <router-link class="text-red-600 underline" to="/custom">
          lien vers
          <code class="font-mono">/src/pages/custom.vue</code>
        </router-link>
      </li>
    </ul>
  </nav>
  <hr> -->

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
