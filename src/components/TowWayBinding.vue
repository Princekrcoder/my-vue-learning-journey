<template>
<div>
    <h1>Two Way Binding</h1>
    <input type="text" v-model="count" />
    <h1>{{ count }}</h1>
    <br>
    <hr>
</div>
</template>

<script>
export default {
    name: 'TwoWayBinding',
    data() {
        return {
            count: ``
        }
    }

}
</script>
