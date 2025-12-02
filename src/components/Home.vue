<template>
    <div>
        <h1 v-on:mousemove="getconsole()">Lecture - 9</h1>
        <button v-on:click="getData('data fetched successfully!')">Click Me</button>

        <button v-on:dblclick="getData('data fetched successfully!')">Click Me</button>
        <h1>{{ count }}</h1>
        <h1>Pass Data To Child Component</h1>
        <PassDataToChild name="Prince"/>
    </div>
    
</template>
<script>
import PassDataToChild from './PassDataToChild.vue'
export default {
    name: 'HomeView',

    components: {
        PassDataToChild
    },

    data() {
        return {
            count : 0,
            user: { name: 'Alice', age: 25 }
        }
    },
    
    methods: {
        getData(data) {
            alert(data);
        },
        getconsole() {
            this.count += 1;
            console.log(`Mouse moved ${this.count} times`);
        }
    }
}
</script>
