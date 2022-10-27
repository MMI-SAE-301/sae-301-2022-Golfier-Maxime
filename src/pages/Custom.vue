<script setup lang="ts">
import Montre from '@/components/Montre.vue';
import FormMontre from '@/components/FormMontre.vue'

</script>

<template>
    <div>
        <h1 class="font-montserrat font-bold lg:text-[60px] mt-16 ml-3 text-center">Custom ta montre !</h1>
    </div>
    <div class="margt">
        <FormMontre />
    </div>
    <div class="flex justify-center items-center mt-10 lg:mt-0">
        <div class="bg-Blue-Light-0 w-60 h-20 flex items-center justify-center rounded-md">
            <router-link to="/Liste">
                <div class=" text-white font-montserrat font-bold text-lg">Voir ma liste</div>
            </router-link>
        </div>
    </div>

</template>

<style scoped>
.margt {
    margin-top: -100px;

}

@media screen and (min-width: 910px) {
    .margt {
        margin-top: 0px;

    }
}
</style>