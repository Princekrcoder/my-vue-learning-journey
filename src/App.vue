<template>
<div>
    <HomeView />
    <TwoWayBinding />
    <GetInputFieldValue />
    <CheckBoxAndRadioButtonValue />
    <IfElseCondition />
    <ForLoop />
    <PassDataToChild 
    name="Prince"
    :us="{ name: 'Kumar' }"
    :al="showAlert"
/>

    <ReuseComponents />
    <HTMLbinding />
    <ClassBinding />

</div>
</template>

<script>
import HomeView from './components/Home.vue'
import TwoWayBinding from './components/TowWayBinding.vue'
import GetInputFieldValue from './components/getInputFieldValue.vue'
import CheckBoxAndRadioButtonValue from './components/CheckBoxAndRadioButtonValue.vue'
import IfElseCondition from './components/IfElseCondition.vue'
import ForLoop from './components/ForLoop.vue'

import ReuseComponents from './components/ReuseComponents.vue'
import PassDataToChild from './components/PassDataToChild.vue'
import HTMLbinding from './components/HTMLbinding.vue'
import ClassBinding from './components/ClassBinding.vue'



export default {
    name: 'App',

    components: {

        HomeView,
        TwoWayBinding,
        GetInputFieldValue,
        CheckBoxAndRadioButtonValue,
        IfElseCondition,
        ForLoop,
        PassDataToChild,
        ReuseComponents,
        HTMLbinding,
        ClassBinding
    }
}
</script>

