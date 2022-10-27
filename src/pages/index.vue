<script setup lang="ts">
import LoginLogout from '@/components/LoginLogout.vue';
</script>

<template>
  <div class="lg:mt-40 mt-9 lg:mb-40">
    <!-- Section 1 -->
    <div class="lg:flex lg:ml-[169px] ml-3  lg:mr-[169px]">
      <div class="flex flex-col justify-between gap-2">
        <div class="">
          <h1 class="font-montserrat font-bold lg:text-[60px] text-2xl">LE TEMPS EST MODIFIÉ</h1>
          <h1 class="font-montserrat font-bold lg:text-[60px] text-2xl">AVEC TOI !</h1>
        </div>
        <p class="font-montserrat font-light text-2xl">TiK•TaK, est le site pour créer ta propre montre connecter !</p>
        <router-link to="/custom">
          <p class="font-montserrat underline underline-offset-2 text-2xl">Allez voir !</p>
        </router-link>
      </div>
      <div class="lg:w-[400px] ">
        <img src="../assets/img/montre.png" class="">
      </div>
    </div>
    <!-- Section 2 -->
    <div class="lg:mt-40 mt-10">
      <div class="lg:flex lg:ml-[169px] lg:mr-[169px] ml-3 ">
        <div class="lg:w-[400px]">
          <img src="../assets/img/carre-tiktak.png">
        </div>
        <div class="flex flex-col justify-between">
          <div>
            <p class="font-montserrat font-medium lg:text-[60px] text-2xl">Votre TIK TAK </p>
            <p class="font-montserrat font-medium lg:text-[60px] text-2xl"> est forcement perle rare</p>
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


</template>
<style>

</style>