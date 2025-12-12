<template>
<div>
    <h1>Lecture - 17</h1>
    <h1>Reuse Components</h1>

    <ol>
        <li v-for="i in users" :key="i.name">
            <ReuseChild :data="i" :=""/>
            
        </li>
    </ol>

    
    
</div>
</template>

<script>
import ReuseChild from './ReuseChild.vue'
export default {
    name: "ReuseComponents",
    components: {
        ReuseChild
    },
    data() {
        return {
            users: [
                { name: 'Prince', email: "prince@gmail.com"},
                { name: 'Kumar', email: 'kumar@gmail.com'},
                { name: 'Singh', email: 'singh@gmail.com'},
                { name: 'Aman', email: 'aman@gmail.com'}
            ]
        }
    },
    methods: {
            alertName() {
                alert(this.users.name);
                
            }
        }
}
</script>