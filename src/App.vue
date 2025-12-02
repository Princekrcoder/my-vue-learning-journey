<template>
<div>
    <HomeView />
    <TwoWayBinding />
    <GetInputFieldValue />
    <CheckBoxAndRadioButtonValue />
    <IfElseCondition />
    <ForLoop />
    <PassDataToChild />
    
</div>
</template>

<script>
import HomeView from './components/Home.vue'
import TwoWayBinding from './components/TowWayBinding.vue'
import GetInputFieldValue from './components/getInputFieldValue.vue'
import CheckBoxAndRadioButtonValue from './components/CheckBoxAndRadioButtonValue.vue'
import IfElseCondition from './components/IfElseCondition.vue'
import ForLoop from './components/ForLoop.vue'


export default {
    name: 'App',

    components: {

        HomeView,
        TwoWayBinding,
        GetInputFieldValue,
        CheckBoxAndRadioButtonValue,
        IfElseCondition,
        ForLoop
    }
}
</script>

