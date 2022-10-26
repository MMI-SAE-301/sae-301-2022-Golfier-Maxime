<script setup lang="ts">
import { supabase, user } from '../supabase';
</script>
<template>
    <div>
        <button class="flex gap-3 font-montserrat border border-Blue-Black-0 rounded-md px-2 py-2" v-if="user"
            @pointerdown="supabase.auth.signOut()">
            Se déconnecter ({{ user.email }})
        </button>
        <button class="flex gap-3 font-montserrat border border-Blue-Black-0 rounded-md px-2 py-2" v-else
            @pointerdown="supabase.auth.signIn({ provider: 'facebook' })">
            <span><img src="Facebook.svg"></span> Se connecter avec Facebook
        </button>
    </div>
</template> 