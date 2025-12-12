<template>
    <div>
        <h1>Lecture - 19</h1>
        <h2 class="clbinding">Class Binding in Vue.js</h2>
        <!-- <button v-on:click="bgcolor!=bgcolor">Apply Style</button> -->

    </div>
</template>

<script>
    export default {
        name: 'ClassBinding',
        data() {
            return {
                bgcolor: false
            }
        }
    }
</script>

<style scoped>
    

    .clbinding {
        bg-color: yellow;
    }
</style>