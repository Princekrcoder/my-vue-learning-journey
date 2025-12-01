<template>
<div>
    <h1>Lecture - 11</h1>
    <h1>Get Input Field Value</h1>
    <input type="text" placeholder="Enter Email" v-model="email">
    <br>
    <br>
    <input type="Password" placeholder="Enter Password" v-model="password">
    <br><br>
    <button v-on:click="getData" type="button">Get Values</button>

</div>
</template>

<script>
export default {
    name: 'GetInputFieldValue',
    data() {
        return {
            email: null,
            password: null
        }
    },
        methods: {
            getData() {
                alert(`Email: ${this.email}, Password: ${this.password}`);
            },
              
        }
}
</script>
