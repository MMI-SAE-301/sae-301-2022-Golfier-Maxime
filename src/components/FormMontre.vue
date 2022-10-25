<script setup lang="ts">
import { type Montre, colors, materiaux } from "@/types";
import { ref } from "vue";
import Montre from "./Montre.vue";
import FormKitListColors from "./FormKitListColors.vue";
import { supabase } from "../supabase";
import { useRouter } from "vue-router";

const router = useRouter();

const props = defineProps<{
    data?: Montre;
    id?: string;
}>();

const montre = ref<Montre>(props.data ?? {});

async function upsertMontre(dataForm, node) {
    const { data, error } = await supabase.from("montre").upsert(dataForm);
    if (error) node.setErrors([error.message]);
    else {
        node.setErrors([]);
        router.push({ name: "montre" });
    }
}

if (props.id) {
    // On charge les données de la montre
    let { data, error } = await supabase
        .from("montre")
        .select("*")
        .eq("montre", props.id);
    if (error || !data)
        console.log("n'a pas pu charger le table montre :", error);
    else montre.value = data[0];
}
</script>

<template>
    <div class="p-2">

        <div class="w-64">
            <Montre class="w-64" v-bind="montre" id="profil" />
        </div>
        <FormKit type="form" v-model="montre" @submit="upsertMontre">

            <FormKitListColors name="bracelet" label="Bracelet" />
            <FormKitListColors name="boitier" label="Boitier" />
            <FormKitListColors name="ecran" label="Ecran" />
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