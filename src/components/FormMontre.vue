<script setup lang="ts">
import { type Montre, colors, materiaux } from "@/types";
import { ref } from "vue";
import Montre from "./Montre.vue";
import FormKitListColors from "./FormKitListColors.vue";
import { supabase } from "../supabase";
import { useRouter } from "vue-router";

const router = useRouter();

const props = defineProps<{
    data?: Basket;
    id?: string;
}>();

const chaussure = ref<Basket>(props.data ?? {});

async function upsertBasket(dataForm, node) {
    const { data, error } = await supabase.from("chaussure").upsert(dataForm);
    if (error) node.setErrors([error.message]);
    else {
        node.setErrors([]);
        router.push({ name: "basket" });
    }
}

if (props.id) {
    // On charge les données de la maison
    let { data, error } = await supabase
        .from("chaussure")
        .select("*")
        .eq("id_chaussure", props.id);
    if (error || !data)
        console.log("n'a pas pu charger le table chaussure :", error);
    else chaussure.value = data[0];
}
</script>

<template>
    <div class="p-2">
        <ul class="flex gap-1">
            <li><a href="#profil">Profil</a></li>
            <li><a href="#dessus">Dessus</a></li>
        </ul>
        <div class="carousel w-64">
            <BasketProfil class="carousel-item w-64" v-bind="chaussure" id="profil" />
            <BasketDessus class="carousel-item w-64" v-bind="chaussure" id="dessus" />
        </div>
        <FormKit type="form" v-model="chaussure" @submit="upsertBasket">

            <FormKitListColors name="semelle" label="Semelle" />
            <FormKitListColors name="empeigne" label="Empeigne" />
            <FormKitListColors name="pointe" label="Pointe" />
            <FormKitListColors name="oeillet" label="Oeillet" />
            <FormKitListColors name="bande" label="Bande" />
            <FormKitListColors name="languette" label="Languette" />
            <FormKitListColors name="lacet" label="Lacet" />
            <FormKitListColors name="trimestre" label="Trimestre" />
            <!-- matériaux -->
            <!-- <FormKit name="materiaux" label="Matériaux" value='#FFFFFF' type="radio" :options="materiaux"
                :sections-schema="{
                    inner: {$el : null},
                    decorator: {$el:null},
                }" input-class="peer sr-only" options-class="flex gap-1">
                <template #label="context">
                    <img :src="context.option.value"
                        class="h-6 w-6 rounded-full border-2 peer-checked:border-red-600" />
                    <span class="sr-only">{{context.option.label}}</span>
                </template>
            </FormKit> -->
        </FormKit>
    </div>
</template>

<style>
.formkit-options {
    display: flex;
    gap: 20px;
}

.formkit-option label {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.formkit-fieldset .formkit-legend {
    color: violet;
    font-size: x-large;
    font-weight: bold;

}
</style>