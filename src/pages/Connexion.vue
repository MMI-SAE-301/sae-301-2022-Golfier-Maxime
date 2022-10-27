<script setup lang="ts">
import LoginLogout from '@/components/LoginLogout.vue';
import LoginLogoutF from '@/components/LoginLogoutFacebook.vue';
</script>
<template>
    <div class="flex justify-center mt-40 ">
        <div class="flex gap-8 ">
            <div class="bg-Blue-Black-0  ">
                <h1 class="text-white josefin text-[45px] mt-4 ml-4 mr-4 ">TiK•TaK</h1>
            </div>
            <div class="flex flex-col gap-4 ">
                <div>
                    <p class="font-montserrat font-bold text-lg ">Connectez-vous !</p>
                </div>
                <div>
                    <LoginLogout></LoginLogout>
                    <p class="font-montserrat font-extrabold text-2xl mt-2 mb-2 text-gray-500 text-center">- OU -</p>
                    <LoginLogoutF></LoginLogoutF>
                </div>
            </div>
        </div>
    </div>
</template>
<style>

</style>