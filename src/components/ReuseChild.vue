<template>
    <div>
        <h1>This is Reuse Child Component</h1>
        Name: {{ data.name }} | Email: {{ data.email }}
        <button v:onclick="alertName">Aler Name</button>
    </div>
</template>
<script>
    export default {
        name: 'ReuseChild',
        props: {
            data:Object
        },
        methods: {
            alertName() {
                alert(this.data.name);
                
            }
        }
    }
</script>