<script setup></script>
<template>
    <div class="bg-Blue-Black-0 flex justify-between">
        <div class=" flex items-center">
            <h1 class="text-white josefin text-[45px] ml-[45px]">TiK•TaK</h1>
        </div>
        <div class="text-white flex gap-8 font-montserrat text-2xl font-bold items-center">
            <div class=" hover:underline underline-offset-8 decoration-Blue-Light-0 ">
                <router-link to="/">
                    <p class="">Accueil</p>
                </router-link>
            </div>
            <div class=" hover:underline underline-offset-8 decoration-Blue-Light-0 ">
                <router-link to="/custom">
                    <p>Customisation</p>
                </router-link>
            </div>
            <div class="mr-[45px]  hover:underline underline-offset-8 decoration-Blue-Light-0 ">
                <p>S'inscrire / Se connecter</p>
            </div>
        </div>
    </div>


</template>
<style>
.josefin {
    font-family: josefin-sans, sans-serif;
    font-weight: 700;
    font-style: normal;
}
</style>