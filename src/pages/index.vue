<script setup lang="ts">
import LoginLogout from '@/components/LoginLogout.vue';
</script>

<template>
  <div class="mt-40 mb-40">
    <!-- Section 1 -->
    <div class="flex ml-[169px] mr-[169px]">
      <div class="flex flex-col justify-between">
        <div>
          <h1 class="font-montserrat font-bold text-[60px]">LE TEMPS EST MODIFIÉ</h1>
          <h1 class="font-montserrat font-bold text-[60px]">AVEC TOI !</h1>
        </div>
        <p class="font-montserrat font-light text-2xl">TiK•TaK, est le site pour créer ta propre montre connecter !</p>
        <router-link to="/custom">
          <p class="font-montserrat underline underline-offset-2 text-2xl">Allez voir !</p>
        </router-link>
      </div>
      <div class="w-[400px]">
        <img src="montre.webp" class="">
      </div>
    </div>
    <!-- Section 2 -->
    <div class="mt-40">
      <div class="flex ml-[169px] mr-[169px] ">
        <div class="w-[400px]">
          <img src="carre-tiktak.png">
        </div>
        <div class="flex flex-col justify-between">
          <div>
            <p class="font-montserrat font-medium text-[60px]">Votre TIK TAK </p>
            <p class="font-montserrat font-medium text-[60px]"> est forcement perle rare</p>
          </div>
          <p class="font-montserrat font-light text-2xl">Vue que c’est vous qui faite votre montre, elle sera unique est
            spécialement conçu pour vous.
          </p>
          <router-link to="/custom">
            <p class="font-montserrat underline underline-offset-2 text-2xl">Allez voir !</p>
          </router-link>
        </div>
      </div>
    </div>
  </div>
  <!-- test en  dessou -->
  <!-- <hr>
  <LoginLogout /> -->

</template>
<style>

</style>