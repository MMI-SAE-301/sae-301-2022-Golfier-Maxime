<script setup lang="ts">
import { supabase } from "@/supabase";
import MontreVue from "./Montre.vue";
const props = defineProps<{
    max?: number;
}>();
const { data: montres, error } = await supabase
    .from("montre")
    .select("*")
    .limit(props.max ?? 100);
if (error) {
    console.log("n'a pas pu récupérer les montres", { error });
}
</script>
<template>
    <div>
        <ul class="lg:flex lg:gap-3 lg:ml-40 ">
            <div class="flex flex-col items-center justify-center">
                <li v-for="montre in montres" :key="montre.id_montre" class="">
                    <router-link :to="`/edit/${montre.id_montre}`">
                        <MontreVue class="w-32 margb" v-bind="montre" />
                    </router-link>
                </li>
            </div>
        </ul>
    </div>
</template>
<style scoped>
.margb {
    margin-bottom: -300px;

}

@media screen and (min-width: 910px) {
    .margb {
        margin-bottom: 0px;

    }
}
</style>