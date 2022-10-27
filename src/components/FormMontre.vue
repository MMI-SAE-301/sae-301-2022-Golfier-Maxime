<script setup lang="ts">
import { type Montre, colors, materiaux } from "@/types";
import { ref } from "vue";
import FormKitListColors from "./FormKitListColors.vue";
import { supabase } from "../supabase";
import { useRouter } from "vue-router";
import MontreVue from '@/components/Montre.vue';
let user = supabase.auth.user()

const router = useRouter();

const props = defineProps<{
    data?: Montre;
    id?: string;
}>();


const montre = ref<Montre>(props.data ?? {});
// @ts-ignore
async function upsertMontre(dataForm, node) {
    const { data, error } = await supabase.from("montre").upsert(dataForm);
    if (error) node.setErrors([error.message]);
    else {
        node.setErrors([]);
        router.push("/Liste");
    }
}

if (props.id) {
    // On charge les données de la maison
    let { data, error } = await supabase
        .from("montre")
        .select("*")
        .eq("id_montre", props.id);
    if (error || !data)
        console.log("n'a pas pu charger le table montre :", error);
    else montre.value = data[0];
}
</script>

<template>
    <div class="flex justify-center mt-16 gap-11">
        <div class="">
            <MontreVue class="w-52" v-bind="montre" id="profil" />
        </div>
        <div class="flex flex-col justify-center">
            <FormKit type="form" v-model="montre" @submit="upsertMontre" :submit-attrs="{
                classes: {
                    input: `text-[#FFFFFF] bg-Blue-Light-0 bouton`
                }
            }">

                <!-- <FormKit name="id_user" label="id_user" type="text" :value="user.id" outer-class="hidden" /> -->


                <FormKitListColors name="bracelet" label="Bracelet" />
                <FormKitListColors name="boitier" label="Boitier" />
                <FormKitListColors name="ecran" label="Ecran" />
                <!-- matériaux -->
                <FormKit name="id_materiaux" label="Matériaux" type="radio" :options="materiaux" :sections-schema="{
                    inner: { $el: null },
                    decorator: { $el: null },
                }" input-class="peer sr-only" options-class="flex gap-1">
                    <template #label="context">
                        <img :src="context.option.img"
                            class="h-6 w-6 rounded-full border-2 peer-checked:border-Blue-Black-0" />
                        <span class="sr-only">{{ context.option.label }}</span>
                    </template>
                </FormKit>
            </FormKit>
        </div>
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
    color: black;
    font-weight: lighter;
    font-family: 'Montserrat', sans-serif;

}

.bouton {
    height: 80px;
    width: 300px;
    border-radius: 5px;
    margin-top: 20px;
    font-weight: bold;
    font-family: 'Montserrat', sans-serif;
}
</style>