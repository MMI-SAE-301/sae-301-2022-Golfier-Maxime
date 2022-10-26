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
    <ul class="flex gap-3 ml-40">
        <li v-for="montre in montres" :key="montre.id_montre">
            <router-link :to="`/edit/${montre.id_montre}`">
                <MontreVue class="w-32 " v-bind="montre" />
            </router-link>
        </li>
    </ul>
</template>