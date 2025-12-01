<template>
    <div>
        <h1>Lecture - 12</h1>
        <h1>CheckBox and Radio Button Value</h1>

        <label for="java">java</label>
        <input type="checkbox" value="java" id="java">

        <label for="php">php</label>
        <input type="checkbox" value="php" id="php">

        <label for="node">node</label>
        <input type="checkbox" value="node" id="node">
    </div>
</template>


<script>
export default {
    name: 'CheckBoxAndRadioButtonValue',
    data() {
        return {
            //
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
    margin: 100px;
}

</style>