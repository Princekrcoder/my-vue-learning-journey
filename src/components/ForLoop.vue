<template>
<div>
    <h1>Lecture - 14</h1>
    <h1>For Loop Component</h1>
    <ul>
        <li v-for="i in techStack" :key="i">{{ i }}</li>
    </ul>
    <br><br>
    <h2>User List</h2>
    <ul>
        <li v-for="value in "></li>
    </ul>

</div>
</template>

<script>
export default {
    name: 'ForLoop',
    data() {
        return {
            techStack: ['HTML', 'CSS', 'JavaScript', 'Vue.js', 'Node.js'],

            user: [
                { name: 'Alice', age: 25 },
                { name: 'Bob', age: 30 },
                { name: 'Charlie', age: 35 }
            ]
        }
    }
}
</script>
