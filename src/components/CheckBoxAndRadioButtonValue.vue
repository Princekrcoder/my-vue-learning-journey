<template>
    <div>
        <h1>Lecture - 12</h1>
        <h1>CheckBox and Radio Button Value</h1>

        <label for="java">java</label>
        <input type="checkbox" value="java" id="java" v-model="technologies">

        <label for="php">php</label>
        <input type="checkbox" value="php" id="php" v-model="technologies">

        <label for="node">node</label>
        <input type="checkbox" value="node" id="node" v-model="technologies">

        <br><br>
        <h3>Who am I</h3>

        <label for="student">Student</label>
        <input type="radio" name="who" value="Student" id="student" v-model="who">

        <label for="developer">Developer</label>
        <input type="radio" name="who" value="Developer" id="developer" v-model="who">


        <h4>Selected Technologies : {{ technologies }}</h4>
        <h4> I am : {{ who }}</h4>
    </div>
</template>


<script>
export default {
    name: 'CheckBoxAndRadioButtonValue',
    data() {
        return {
            technologies: [],
            who: null
        }
    }
}
</script>

