<template>
<div>
    <h1>Lecture - 13</h1>
    <h1>Ife Condition Component</h1>
    <!-- <p v-if="A">This is true Condition</p>

    <h1>If-Else Condition Component</h1>
    <p v-if="B">This is true Condition</p>
    <p v-else>This is false Condition</p>

    <h1>If-Else Condition Component</h1>
    <p v-if="C">This is true Condition</p>
    <p v-else-if="D">This is else-if Condition</p>
    <p v-else>This is else Condition</p> -->

    <p v-if="show">This is true Condition</p>
    <p v-else>This is false Condition</p>
    
    <button v-on:click="show!=show">Toogle</button>

</div>
</template>

<script>
export default {
    name: 'IfElseCondition',
    data() {
        return {
            A: true,
            B: false,
            show: false
        }
    }

}
</script>

<style scoped>
div {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    margin-top: 60px;
    background-color: rgb(238, 152, 255);
    margin: 0px 0px 100px 0px;
}
</style>
