<template>
    <Navbar />

    <v-card>
        <v-layout>
            <v-navigation-drawer expand-on-hover rail class="mt-5">

                <v-list density="compact" nav>
                    <v-list-item prepend-icon="mdi-folder" title="My Files" value="myfiles"></v-list-item>
                    <v-list-item prepend-icon="mdi-account-multiple" title="Shared with me" value="shared"></v-list-item>
                    <v-list-item prepend-icon="mdi-star" title="Starred" value="starred"></v-list-item>
                </v-list>
            </v-navigation-drawer>

            <v-main style="height: 91.8vh">


            </v-main>
        </v-layout>
    </v-card>
</template>

<script>
import Navbar from '@/components/Navbar.vue'

export default({
    components:{
        Navbar
    },
    data(){
        return{

        }
    }
})

</script>
