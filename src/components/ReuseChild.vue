<template>
    <div>
        <h1>This is Reuse Child Component</h1>
        Name: {{ data.name }} | Email: {{ data.email }}
        <button v-on:click="alertName(data)">Alert Name</button>
    </div>
</template>
<script>
    export default {
        name: 'ReuseChild',
        props: {
            data:Object,
            alertName: Function
        },
        
    }
</script>