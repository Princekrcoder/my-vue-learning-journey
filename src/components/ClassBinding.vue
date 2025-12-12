<template>
    <div>
        <h1>Lecture - 19</h1>
        <h2  :class="applyStyle">Class Binding in Vue.js</h2>
        <button v-on:click="bgcolor=!bgcolor">Apply Style</button>

    </div>
</template>

<script>
    export default {
        name: 'ClassBinding',
        data() {
            return {
                bgcolor: false
            }
        },
        computed: {
            applyStyle() {
                return {
                    clbinding:bgcolor,
                    err:true,
                    other:true
                }
            }
        }
    }
</script>

<style scoped>
    

    .clbinding {
        background-color: lightblue;
        padding: 10px;
        border-radius: 5px;
        text-align: center;
    }

    .err {
        color: red;
    }

    .other {
        font-style: italic;
    }
</style>