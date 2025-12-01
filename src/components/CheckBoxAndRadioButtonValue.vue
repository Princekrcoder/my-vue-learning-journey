<template>
    <div>
        <h1>Lecture - 12</h1>
        <h1>CheckBox and Radio Button Value</h1>

        <label for="java">java</label>
        <input type="checkbox" value="java" id="java" v-model="technologies">

        <label for="php">php</label>
        <input type="checkbox" value="php" id="php" v-model="technologies">

        <label for="node">node</label>
        <input type="checkbox" value="node" id="node" >

        <h4>Selected Technologies : {{ technologies }}</h4>
    </div>
</template>


<script>
export default {
    name: 'CheckBoxAndRadioButtonValue',
    data() {
        return {
            technologies: []
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
    background-color: aqua;
    margin:0px 0px 100px 0px;
    padding: 20px;
}

</style>