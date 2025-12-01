<template>
<div>
    <h1>Lecture - 11</h1>
    <h1>Get Input Field Value</h1>
    <input type="text" placeholder="Enter Email">
    <br>
    <br>
    <input type="Password" placeholder="Enter Password">
    <br><br>
    <button type="button">Get Values</button>

</div>
</template>

<script>
export default {
    name: 'GetInputFieldValue',
    data() {
        return {
            email: null,
            password: ''
        },
        methods: {
            getData() {
                alert(`Email: ${this.email}, Password: ${this.password}`);
            },
              
        }
    }
}
</script>
