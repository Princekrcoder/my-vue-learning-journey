<div align="center">
  <h1>🌟🔥 Vue.js Comprehensive Course Notes 🔥🌟</h1>
  <h3>Learn → Practice → Master</h3>
Show Image
Show Image
Show Image
</div>
<br/>
🧾 📌 Description
📁 This repository includes complete and organized study material for Vue.js, covering core fundamentals and advanced development levels.
🧠 Topics include: Options API, Composition API, Vue Router, and Pinia-based state handling.
🎯 Designed especially for learners and developers focusing on mastering the full Vue.js workflow.
✨ Features:

💡 Clear explanations with real-world examples
🔧 Hands-on code snippets and demos
📊 Progressive learning path from basics to advanced
🎨 Best practices and design patterns
🚀 Production-ready techniques

<br/>
📚 📍 Table of Contents
⬇️ Explore each module below:

🎯 Module 1: Introduction to Vue.js
⚡ Module 2: Vue Instance and Reactivity System
📝 Module 3: Template Syntax and Directives
🧮 Module 4: Computed Properties and Watchers
🧩 Module 5: Component System
🔄 Module 6: Props and Custom Events
🔄 Module 7: Lifecycle Hooks
🗺️ Module 8: Vue Router
🗃️ Module 9: State Management with Pinia
🎨 Module 10: Composition API
🚀 Module 11: Advanced Patterns and Best Practices
💪 Comprehensive Exercises
🔗 Additional Resources


<br/>
🎯 Module 1: Introduction to Vue.js
📖 1.1 What is Vue.js?
Vue.js is a progressive JavaScript framework for building user interfaces. Created by Evan You in 2014, Vue focuses on the view layer and is designed to be incrementally adoptable.
⭐ Key Characteristics:

Progressive: Can be used for simple enhancements or complex Single Page Applications (SPAs)
Reactive: Automatic UI updates when data changes
Component-Based: Encourages reusable, maintainable code
Approachable: Easy learning curve with excellent documentation

💭 Vue's Core Philosophy:
Vue sits between React's flexibility and Angular's opinionated structure, providing the best of both worlds.
<br/>
⚙️ 1.2 Setting Up Vue.js
🌐 Method 1: CDN (Quick Start)
html<!DOCTYPE html>
<html>
<head>
    <title>Vue.js Basic Setup</title>
    <script src="https://cdn.jsdelivr.net/npm/vue@3/dist/vue.global.js"></script>
</head>
<body>
    <div id="app">
        {{ message }}
    </div>

    <script>
        const { createApp } = Vue;
        
        createApp({
            data() {
                return {
                    message: 'Hello Vue.js!'
                }
            }
        }).mount('#app');
    </script>
</body>
</html>
🛠️ Method 2: Vue CLI / Vite (Production)
bash# Using npm with Vite (recommended)
npm create vue@latest

# Follow prompts, then:
cd your-project-name
npm install
npm run dev
<br/>
🏗️ 1.3 Vue Instance Anatomy
javascriptconst app = createApp({
    // Data: Reactive state
    data() {
        return {
            count: 0,
            message: 'Hello'
        }
    },
    
    // Methods: Functions available to the template
    methods: {
        increment() {
            this.count++;
        }
    },
    
    // Computed: Cached reactive values
    computed: {
        doubleCount() {
            return this.count * 2;
        }
    },
    
    // Lifecycle hooks
    mounted() {
        console.log('Component is mounted!');
    }
});

app.mount('#app');

<br/>
⚡ Module 2: Vue Instance and Reactivity System
🔮 2.1 Understanding Reactivity
Vue's reactivity system tracks dependencies and automatically updates the DOM when data changes.
🎯 How it Works:

Vue wraps data properties with getters/setters (using Proxy in Vue 3)
When data is accessed, Vue tracks which component depends on it
When data changes, Vue notifies dependent components to re-render

javascript// Reactivity in action
const app = createApp({
    data() {
        return {
            firstName: 'John',
            lastName: 'Doe'
        }
    },
    computed: {
        // This will automatically update when firstName or lastName changes
        fullName() {
            return `${this.firstName} ${this.lastName}`;
        }
    }
});
<br/>
📦 2.2 Data Properties
html<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/vue@3/dist/vue.global.js"></script>
</head>
<body>
    <div id="app">
        <h2>Student Information</h2>
        <p>Name: {{ student.name }}</p>
        <p>Age: {{ student.age }}</p>
        <p>Grade: {{ student.grade }}</p>
        <button @click="celebrateBirthday">Birthday!</button>
    </div>

    <script>
        const { createApp } = Vue;
        
        createApp({
            data() {
                return {
                    student: {
                        name: 'Alice',
                        age: 20,
                        grade: 'A'
                    }
                }
            },
            methods: {
                celebrateBirthday() {
                    this.student.age++;
                }
            }
        }).mount('#app');
    </script>
</body>
</html>
⚠️ Important Notes:

✅ All properties in data() become reactive
✅ Always return a fresh object from data() function
✅ Nested properties are also reactive
✅ Adding new properties after creation requires special handling (use Vue.set in Vue 2, or direct assignment in Vue 3)


<br/>
📝 Module 3: Template Syntax and Directives
📄 3.1 Interpolation
📌 Text Interpolation:
html<p>{{ message }}</p>
<p>{{ number + 1 }}</p>
<p>{{ ok ? 'YES' : 'NO' }}</p>
<p>{{ message.split('').reverse().join('') }}</p>
🔗 Raw HTML:
html<div v-html="rawHtmlContent"></div>
🎨 Attribute Binding:
html<div v-bind:id="dynamicId"></div>
<!-- Shorthand -->
<div :id="dynamicId"></div>
<br/>
🎮 3.2 Directives
Directives are special attributes with the v- prefix.
🔗 v-bind: Attribute Binding
html<div id="app">
    <img :src="imageSrc" :alt="imageAlt">
    <a :href="url">{{ linkText }}</a>
    <div :class="{ active: isActive, 'text-danger': hasError }"></div>
    <div :style="{ color: textColor, fontSize: fontSize + 'px' }"></div>
</div>

<script>
createApp({
    data() {
        return {
            imageSrc: 'image.jpg',
            imageAlt: 'Description',
            url: 'https://example.com',
            linkText: 'Click here',
            isActive: true,
            hasError: false,
            textColor: 'red',
            fontSize: 14
        }
    }
}).mount('#app');
</script>
<br/>
🔀 v-if, v-else-if, v-else: Conditional Rendering
html<div id="app">
    <p v-if="score >= 90">Grade: A</p>
    <p v-else-if="score >= 80">Grade: B</p>
    <p v-else-if="score >= 70">Grade: C</p>
    <p v-else>Grade: F</p>
    
    <button @click="score += 10">Increase Score</button>
</div>

<script>
createApp({
    data() {
        return {
            score: 75
        }
    }
}).mount('#app');
</script>
<br/>
👁️ v-show: Toggle Display
html<div id="app">
    <p v-show="isVisible">This text can be toggled</p>
    <button @click="isVisible = !isVisible">Toggle</button>
</div>

<script>
createApp({
    data() {
        return {
            isVisible: true
        }
    }
}).mount('#app');
</script>
💡 Difference between v-if and v-show:
Featurev-ifv-showRenderingConditionally renders element (removes from DOM)Always renders, toggles CSS display propertyUse CaseInfrequent togglesFrequent toggles
<br/>
📋 v-for: List Rendering
html<div id="app">
    <h3>Student List</h3>
    <ul>
        <li v-for="(student, index) in students" :key="student.id">
            {{ index + 1 }}. {{ student.name }} - {{ student.major }}
        </li>
    </ul>
    
    <h3>Course Details</h3>
    <div v-for="(value, key) in course" :key="key">
        {{ key }}: {{ value }}
    </div>
</div>

<script>
createApp({
    data() {
        return {
            students: [
                { id: 1, name: 'Alice', major: 'Computer Science' },
                { id: 2, name: 'Bob', major: 'Mathematics' },
                { id: 3, name: 'Charlie', major: 'Physics' }
            ],
            course: {
                name: 'Vue.js Fundamentals',
                credits: 3,
                instructor: 'Prof. Smith'
            }
        }
    }
}).mount('#app');
</script>
<br/>
🖱️ v-on: Event Handling
html<div id="app">
    <button v-on:click="handleClick">Click Me</button>
    <!-- Shorthand -->
    <button @click="handleClick">Click Me</button>
    
    <!-- With event modifiers -->
    <form @submit.prevent="handleSubmit">
        <input type="text" v-model="inputValue">
        <button type="submit">Submit</button>
    </form>
    
    <!-- Multiple event handlers -->
    <button @click="incrementA(), incrementB()">Increment Both</button>
</div>

<script>
createApp({
    data() {
        return {
            inputValue: '',
            countA: 0,
            countB: 0
        }
    },
    methods: {
        handleClick() {
            alert('Button clicked!');
        },
        handleSubmit() {
            console.log('Form submitted:', this.inputValue);
        },
        incrementA() {
            this.countA++;
        },
        incrementB() {
            this.countB++;
        }
    }
}).mount('#app');
</script>
🎯 Event Modifiers:

.stop - calls event.stopPropagation()
.prevent - calls event.preventDefault()
.capture - use capture mode
.self - only trigger if event.target is the element itself
.once - trigger handler at most once
.passive - improves scrolling performance

<br/>
🔄 v-model: Two-Way Data Binding
html<div id="app">
    <h3>Form Example</h3>
    
    <!-- Text Input -->
    <input v-model="username" placeholder="Username">
    <p>Username: {{ username }}</p>
    
    <!-- Checkbox -->
    <input type="checkbox" v-model="agreed" id="agree">
    <label for="agree">I agree to terms</label>
    
    <!-- Multiple Checkboxes -->
    <div>
        <input type="checkbox" value="Vue" v-model="frameworks" id="vue">
        <label for="vue">Vue</label>
        <input type="checkbox" value="React" v-model="frameworks" id="react">
        <label for="react">React</label>
        <input type="checkbox" value="Angular" v-model="frameworks" id="angular">
        <label for="angular">Angular</label>
    </div>
    <p>Selected: {{ frameworks }}</p>
    
    <!-- Radio Buttons -->
    <input type="radio" value="Male" v-model="gender" id="male">
    <label for="male">Male</label>
    <input type="radio" value="Female" v-model="gender" id="female">
    <label for="female">Female</label>
    <p>Gender: {{ gender }}</p>
    
    <!-- Select Dropdown -->
    <select v-model="selectedCountry">
        <option disabled value="">Choose country</option>
        <option value="USA">USA</option>
        <option value="UK">UK</option>
        <option value="India">India</option>
    </select>
    <p>Country: {{ selectedCountry }}</p>
</div>

<script>
createApp({
    data() {
        return {
            username: '',
            agreed: false,
            frameworks: [],
            gender: '',
            selectedCountry: ''
        }
    }
}).mount('#app');
</script>
🎨 v-model Modifiers:

.lazy - sync after change event instead of input
.number - convert input to number
.trim - trim whitespace


<br/>
🧮 Module 4: Computed Properties and Watchers
💻 4.1 Computed Properties
Computed properties are cached and only re-evaluate when their dependencies change.
html<div id="app">
    <h3>Shopping Cart</h3>
    <div v-for="item in items" :key="item.id">
        {{ item.name }}: ${{ item.price }} x {{ item.quantity }}
    </div>
    
    <h4>Subtotal: ${{ subtotal }}</h4>
    <h4>Tax (10%): ${{ tax }}</h4>
    <h4>Total: ${{ total }}</h4>
    
    <button @click="addItem">Add Random Item</button>
</div>

<script>
createApp({
    data() {
        return {
            items: [
                { id: 1, name: 'Laptop', price: 1000, quantity: 1 },
                { id: 2, name: 'Mouse', price: 20, quantity: 2 }
            ]
        }
    },
    computed: {
        subtotal() {
            return this.items.reduce((sum, item) => {
                return sum + (item.price * item.quantity);
            }, 0);
        },
        tax() {
            return this.subtotal * 0.1;
        },
        total() {
            return this.subtotal + this.tax;
        }
    },
    methods: {
        addItem() {
            const newItem = {
                id: Date.now(),
                name: 'Item ' + Date.now(),
                price: Math.floor(Math.random() * 100),
                quantity: 1
            };
            this.items.push(newItem);
        }
    }
}).mount('#app');
</script>
🆚 Computed vs Methods:
FeatureComputed PropertiesMethodsCaching✅ Cached based on dependencies❌ Not cachedUse CaseDerived state from reactive dataActions and non-reactive operations
<br/>
👀 4.2 Watchers
Watchers observe data changes and perform actions in response.
html<div id="app">
    <h3>Search Users</h3>
    <input v-model="searchQuery" placeholder="Type to search...">
    <p v-if="isSearching">Searching...</p>
    <ul>
        <li v-for="user in filteredUsers" :key="user.id">
            {{ user.name }}
        </li>
    </ul>
</div>

<script>
createApp({
    data() {
        return {
            searchQuery: '',
            isSearching: false,
            users: [
                { id: 1, name: 'Alice Johnson' },
                { id: 2, name: 'Bob Smith' },
                { id: 3, name: 'Charlie Brown' },
                { id: 4, name: 'David Wilson' }
            ],
            filteredUsers: []
        }
    },
    watch: {
        // Simple watcher
        searchQuery(newValue, oldValue) {
            console.log(`Search changed from "${oldValue}" to "${newValue}"`);
            this.performSearch();
        },
        
        // Watcher with options
        searchQuery: {
            handler(newValue) {
                this.performSearch();
            },
            immediate: true  // Run on initialization
        }
    },
    methods: {
        performSearch() {
            this.isSearching = true;
            
            // Simulate API call delay
            setTimeout(() => {
                if (this.searchQuery) {
                    this.filteredUsers = this.users.filter(user =>
                        user.name.toLowerCase().includes(this.searchQuery.toLowerCase())
                    );
                } else {
                    this.filteredUsers = this.users;
                }
                this.isSearching = false;
            }, 500);
        }
    },
    mounted() {
        this.filteredUsers = this.users;
    }
}).mount('#app');
</script>
🔍 Deep Watching:
javascriptwatch: {
    userObject: {
        handler(newValue, oldValue) {
            console.log('User object changed');
        },
        deep: true  // Watch nested properties
    }
}

<br/>
🧩 Module 5: Component System
🎯 5.1 Introduction to Components
Components are reusable Vue instances with custom names.
🌍 Global Component Registration:
html<div id="app">
    <greeting-card></greeting-card>
    <greeting-card></greeting-card>
</div>

<script>
const { createApp } = Vue;

const app = createApp({});

// Global component
app.component('greeting-card', {
    template: `
        <div class="card">
            <h3>Hello from Component!</h3>
            <p>This is a reusable component.</p>
        </div>
    `
});

app.mount('#app');
</script>
<br/>
📍 Local Component Registration:
html<div id="app">
    <user-profile></user-profile>
</div>

<script>
const UserProfile = {
    template: `
        <div class="profile">
            <h3>{{ user.name }}</h3>
            <p>{{ user.email }}</p>
        </div>
    `,
    data() {
        return {
            user: {
                name: 'John Doe',
                email: 'john@example.com'
            }
        }
    }
};

createApp({
    components: {
        'user-profile': UserProfile
    }
}).mount('#app');
</script>
<br/>
📄 5.2 Single File Components (SFC)
Structure:
vue<!-- UserCard.vue -->
<template>
    <div class="user-card">
        <h3>{{ user.name }}</h3>
        <p>{{ user.role }}</p>
        <button @click="showDetails">Details</button>
    </div>
</template>

<script>
export default {
    name: 'UserCard',
    data() {
        return {
            user: {
                name: 'Alice',
                role: 'Developer'
            }
        }
    },
    methods: {
        showDetails() {
            alert(`${this.user.name} is a ${this.user.role}`);
        }
    }
}
</script>

<style scoped>
.user-card {
    border: 1px solid #ddd;
    padding: 20px;
    border-radius: 8px;
}

.user-card h3 {
    margin: 0 0 10px 0;
    color: #333;
}
</style>

<br/>
🔄 Module 6: Props and Custom Events
📥 6.1 Props: Parent to Child Communication
html<div id="app">
    <h2>Blog Posts</h2>
    <blog-post 
        v-for="post in posts" 
        :key="post.id"
        :title="post.title"
        :content="post.content"
        :author="post.author"
        :likes="post.likes"
    ></blog-post>
</div>

<script>
const BlogPost = {
    props: {
        title: {
            type: String,
            required: true
        },
        content: {
            type: String,
            default: 'No content available'
        },
        author: String,
        likes: {
            type: Number,
            default: 0,
            validator(value) {
                return value >= 0;
            }
        }
    },
    template: `
        <article class="blog-post">
            <h3>{{ title }}</h3>
            <p class="author">By {{ author }}</p>
            <p>{{ content }}</p>
            <div class="likes">
                ❤️ {{ likes }} likes
            </div>
        </article>
    `
};

createApp({
    components: {
        'blog-post': BlogPost
    },
    data() {
        return {
            posts: [
                {
                    id: 1,
                    title: 'Introduction to Vue.js',
                    content: 'Vue.js is an amazing framework...',
                    author: 'Prof. Smith',
                    likes: 42
                },
                {
                    id: 2,
                    title: 'Components in Vue',
                    content: 'Components make code reusable...',
                    author: 'Dr. Johnson',
                    likes: 38
                }
            ]
        }
    }
}).mount('#app');
</script>
📦 Prop Types:
String, Number, Boolean, Array, Object, Date, Function, Symbol, and custom constructor functions.
✅ Prop Validation:
javascriptprops: {
    age: {
        type: Number,
        required: true,
        validator(value) {
            return value >= 0 && value <= 120;
        }
    },
    status: {
        type: String,
        validator(value) {
            return ['active', 'inactive', 'pending'].includes(value);
        }
    }
}
<br/>
📤 6.2 Custom Events: Child to Parent Communication
html<div id="app">
    <h2>Counter Application</h2>
    <p>Total Count: {{ totalCount }}</p>
    
    <counter-button 
        @increment="handleIncrement"
        @decrement="handleDecrement"
    ></counter-button>
</div>

<script>
const CounterButton = {
    template: `
        <div class="counter">
            <button @click="increment">+</button>
            <button @click="decrement">-</button>
            <button @click="incrementBy(5)">+5</button>
        </div>
    `,
    methods: {
        increment() {
            this.$emit('increment', 1);
        },
        decrement() {
            this.$emit('decrement', 1);
        },
        incrementBy(amount) {
            this.$emit('increment', amount);
        }
    }
};

createApp({
    components: {
        'counter-button': CounterButton
    },
    data() {
        return {
            totalCount: 0
        }
    },
    methods: {
        handleIncrement(amount) {
            this.totalCount += amount;
        },
        handleDecrement(amount) {
            this.totalCount -= amount;
        }
    }
}).mount('#app');
</script>
📢 Defining Emitted Events:
javascriptexport default {
    emits: ['increment', 'decrement'],
    // Or with validation
    emits: {
        increment(value) {
            return typeof value === 'number';
        }
    }
}

<br/>
🔄 Module 7: Lifecycle Hooks
⏳ 7.1 Component Lifecycle
Vue components go through a series of initialization steps.
📊 Lifecycle Diagram:

beforeCreate: Instance initialized, data/events not set up
created: Instance created, data/events set up, DOM not mounted
beforeMount: Template compiled, not yet rendered
mounted: Component mounted to DOM
beforeUpdate: Data changed, DOM not yet updated
updated: DOM re-rendered with new data
beforeUnmount: Before component removal
unmounted: Component removed and cleaned up

html<div id="app">
    <h2>Lifecycle Demo</h2>
    <user-data></user-data>
</div>

<script>
const UserData = {
    template: `
        <div>
            <h3>User Data</h3>
            <div v-if="loading">Loading...</div>
            <div v-else>
                <p>Name: {{ user.name }}</p>
                <p>Email: {{ user.email }}</p>
            </div>
            <button @click="updateUser">Update</button>
        </div>
    `,
    data() {
        return {
            user: null,
            loading: true
        }
    },
    
    beforeCreate() {
        console.log('1. beforeCreate: Component initializing...');
    },
    
    created() {
        console.log('2. created: Component created, fetching data...');
        this.fetchUserData();
    },
    
    beforeMount() {
        console.log('3. beforeMount: About to mount to DOM...');
    },
    
    mounted() {
        console.log('4. mounted: Component mounted to DOM');
        console.log('DOM element:', this.$el);
    },
    
    beforeUpdate() {
        console.log('5. beforeUpdate: Data changed, DOM about to update');
    },
    
    updated() {
        console.log('6. updated: DOM updated with new data');
    },
    
    beforeUnmount() {
        console.log('7. beforeUnmount: About to unmount component');
    },
    
    unmounted() {
        console.log('8. unmounted: Component unmounted');
    },
    
    methods: {
        fetchUserData() {
            setTimeout(() => {
                this.user = {
                    name: 'John Doe',
                    email: 'john@example.com'
                };
                this.loading = false;
            }, 1000);
        },
        updateUser() {
            this.user.name = 'Jane Doe';
        }
    }
};

createApp({
    components: {
        'user-data': UserData
    }
}).mount('#app');
</script>
<br/>
🎯 7.2 Common Use Cases
🖥️ mounted: DOM Manipulation
javascriptmounted() {
    // Initialize third-party libraries
    this.initChart();
    
    // Add event listeners
    window.addEventListener('resize', this.handleResize);
}
🧹 beforeUnmount: Cleanup
javascriptbeforeUnmount() {
    // Remove event listeners
    window.removeEventListener('resize', this.handleResize);
    
    // Clear timers
    if (this.timer) {
        clearInterval(this.timer);
    }
}

<br/>
🗺️ Module 8: Vue Router
🧭 8.1 Introduction to Vue Router
Vue Router is the official routing library for Vue.js SPAs.
📦 Installation:
bashnpm install vue-router@4
⚙️ Basic Setup:
javascript// router/index.js
import { createRouter, createWebHistory } from 'vue-router';
import Home from './components/Home.vue';
import About from './components/About.vue';
import Contact from './components/Contact.vue';

const routes = [
    {
        path: '/',
        name: 'Home',
        component: Home
    },
    {
        path: '/about',
        name: 'About',
        component: About
    },
    {
        path: '/contact',
        name: 'Contact',
        component: Contact
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router;
🔌 Using Router in App:
javascript// main.js
import { createApp } from 'vue';
import App from './App.vue';
import router from './router';

const app = createApp(App);
app.use(router);
app.mount('#app');
vue<!-- App.vue -->
<template>
    <div id="app">
        <nav>
            <router-link to="/">Home</router-link>
            <router-link to="/about">About</router-link>
            <router-link to="/contact">Contact</router-link>
        </nav>
        
        <router-view></router-view>
    </div>
</template>
<br/>
🎯 8.2 Dynamic Routes
javascriptconst routes = [
    {
        path: '/user/:id',
        name: 'User',
        component: User,
        props: true  // Pass route params as props
    },
    {
        path: '/post/:id/comment/:commentId',
        component: Comment
    }
];
🔍 Accessing Route Params:
vue<template>
    <div>
        <h2>User Profile: {{ userId }}</h2>
    </div>
</template>

<script>
export default {
    props: ['id'],
    computed: {
        userId() {
            return this.$route.params.id;
        }
    }
}
</script>
<br/>
🛡️ 8.3 Navigation Guards
javascript// Global guards
router.beforeEach((to, from, next) => {
    console.log('Navigating from:', from.path);
    console.log('Navigating to:', to.path);
    
    // Check authentication
    if (to.meta.requiresAuth && !isAuthenticated()) {
        next('/login');
    } else {
        next();
    }
});

// Per-route guards
{
    path: '/admin',
    component: Admin,
    meta: { requiresAuth: true },
    beforeEnter: (to, from, next) => {
        if (checkAdminPermission()) {
            next();
        } else {
            next('/unauthorized');
        }
    }
}

<br/>
🗃️ Module 9: State Management with Pinia
🎨 9.1 Introduction to Pinia
Pinia is the recommended state management library for Vue 3 (successor to Vuex).
📦 Installation:
bashnpm install pinia
⚙️ Setup:
javascript// main.js
import { createApp } from 'vue';
import { createPinia } from 'pinia';
import App from './App.vue';

const app = createApp(App);
app.use(createPinia());
app.mount('#app');
<br/>
🏪 9.2 Creating Stores
javascript// stores/counter.js
import { defineStore } from 'pinia';

export const useCounterStore = defineStore('counter', {
    state: () => ({
        count: 0,
        name: 'Counter Store'
    }),
    
    getters: {
        doubleCount: (state) => state.count * 2,
        
        doubleCountPlusOne() {
            return this.doubleCount + 1;
        }
    },
    
    actions: {
        increment() {
            this.count++;
        },
        
        incrementBy(amount) {
            this.count += amount;
        },
        
        async fetchCount() {
            const response = await fetch('/api/count');
            const data = await response.json();
            this.count = data.count;
        }
    }
});
🎯 Using Store in Components:
vue<template>
    <div>
        <h2>Count: {{ counter.count }}</h2>
        <h3>Double: {{ counter.doubleCount }}</h3>
        <button @click="counter.increment()">Increment</button>
        <button @click="counter.incrementBy(5)">+5</button>
    </div>
</template>

<script setup>
import { useCounterStore } from '@/stores/counter';

const counter = useCounterStore();
</script>

<br/>
🎨 Module 10: Composition API
🚀 10.1 Introduction
The Composition API is an alternative to the Options API, providing better code organization for large components.
🆚 Options API vs Composition API:
vue<!-- Options API -->
<script>
export default {
    data() {
        return {
            count: 0
        }
    },
    methods: {
        increment() {
            this.count++;
        }
    }
}
</script>

<!-- Composition API -->
<script setup>
import { ref } from 'vue';

const count = ref(0);
const increment = () => {
    count.value++;
};
</script>
<br/>
🔄 10.2 Reactive References
vue<template>
    <div>
        <h2>Todo List</h2>
        <input v-model="newTodo" @keyup.enter="addTodo">
        <button @click="addTodo">Add</button>
        
        <ul>
            <li v-for="todo in todos" :key="todo.id">
                {{ todo.text }}
                <button @click="removeTodo(todo.id)">Remove</button>
            </li>
        </ul>
        
        <p>Total: {{ todoCount }}</p>
    </div>
</template>

<script setup>
import { ref, computed } from 'vue';

const newTodo = ref('');
const todos = ref([
    { id: 1, text: 'Learn Vue' },
    { id: 2, text: 'Build app' }
]);

const todoCount = computed(() => todos.value.length);

const addTodo = () => {
    if (newTodo.value.trim()) {
        todos.value.push({
            id: Date.now(),
            text: newTodo.value
        });
        newTodo.value = '';
    }
};

const removeTodo = (id) => {
    todos.value = todos.value.filter(todo => todo.id !== id);
};
</script>
<br/>
📦 10.3 Reactive Objects
vue<script setup>
import { reactive, toRefs } from 'vue';

const state = reactive({
    user: {
        name: 'John',
        age: 30
    },
    settings: {
        theme: 'dark',
        notifications: true
    }
});

// Destructure while maintaining reactivity
const { user, settings } = toRefs(state);

const updateName = (newName) => {
    state.user.name = newName;
};
</script>
<br/>
⏰ 10.4 Lifecycle Hooks in Composition API
vue<script setup>
import { onMounted, onUpdated, onUnmounted } from 'vue';

onMounted(() => {
    console.log('Component mounted');
});

onUpdated(() => {
    console.log('Component updated');
});

onUnmounted(() => {
    console.log('Component unmounted');
});
</script>

<br/>
🚀 Module 11: Advanced Patterns and Best Practices
♻️ 11.1 Composables (Reusable Logic)
javascript// composables/useFetch.js
import { ref } from 'vue';

export function useFetch(url) {
    const data = ref(null);
    const error = ref(null);
    const loading = ref(false);
    
    const fetchData = async () => {
        loading.value = true;
        try {
            const response = await fetch(url);
            data.value = await response.json();
        } catch (e) {
            error.value = e;
        } finally {
            loading.value = false;
        }
    };
    
    return { data, error, loading, fetchData };
}
🎯 Using Composable:
vue<script setup>
import { onMounted } from 'vue';
import { useFetch } from '@/composables/useFetch';

const { data, loading, error, fetchData } = useFetch('/api/users');

onMounted(() => {
    fetchData();
});
</script>
<br/>
🔗 11.2 Provide/Inject for Deep Prop Passing
vue<!-- Parent Component -->
<script setup>
import { provide, ref } from 'vue';

const theme = ref('dark');
provide('theme', theme);
</script>

<!-- Deep Child Component -->
<script setup>
import { inject } from 'vue';

const theme = inject('theme');
</script>
<br/>
✅ 11.3 Best Practices
PracticeDescriptionComponent NamingUse PascalCase for componentsProp NamingUse camelCase in JavaScript, kebab-case in templatesKeep Components SmallSingle responsibility principleUse Computed PropertiesFor derived stateAvoid Mutating PropsProps should be read-onlyKey AttributeAlways use :key with v-forScoped StylesUse <style scoped> to avoid CSS conflicts

<br/>
💪 Comprehensive Exercises
🎯 Exercise 1: Todo Application (Beginner)
Create a complete todo application with the following features:

✅ Add new todos
✅ Mark todos as complete
✅ Delete todos
✅ Filter todos (all, active, completed)
✅ Show todo count

📋 Requirements:

Use v-model for input
Use v-for for list rendering
Use computed properties for filtering
Use methods for CRUD operations

<br/>
🎯 Exercise 2: User Management System (Intermediate)
Build a user management dashboard:

👥 Display list of users in a table
➕ Add new user form with validation
✏️ Edit existing users
🗑️ Delete users with confirmation
🔍 Search/filter users
🔃 Sort users by name/email

📋 Requirements:

Create reusable components (UserTable, UserForm, SearchBar)
Use props and custom events
Implement form validation
Use watchers for search functionality

<br/>
🎯 Exercise 3: E-commerce Product Catalog (Advanced)
Create a product catalog with shopping cart:

🛍️ Product listing with images
📂 Category filtering
💰 Price range filter
🛒 Add to cart functionality
📊 Shopping cart with quantity adjustment
💵 Calculate total price with tax
📝 Checkout form

📋 Requirements:

Use Pinia for state management
Create multiple components
Implement Vue Router for navigation
Use Composition API
Add transitions and animations

<br/>
🎯 Exercise 4: Blog Platform (Expert)
Build a complete blog platform:

🔐 User authentication (login/register)
📝 Create/edit/delete posts
💬 Comment system
❤️ Like/unlike posts
👤 User profiles
🔍 Search functionality
📄 Pagination
🛡️ Protected routes

📋 Requirements:

Vue Router with navigation guards
Pinia for global state
API integration (mock or real)
Form validation
Error handling
Loading states
Responsive design


<br/>
🎓 Practice Problems
#ProblemDifficulty1Counter with History🟢 Easy2Dynamic Form Builder🟡 Medium3Infinite Scroll🟡 Medium4Real-time Search🟡 Medium5Modal System🔴 Hard

<br/>
🔗 Additional Resources
📚 Official Documentation

🌐 Vue.js Official Docs
🗺️ Vue Router
🗃️ Pinia

<br/>
🎯 Learning Paths

🎓 Master basics: Directives, components, props
🗺️ Learn routing: Navigation and dynamic routes
🗃️ Understand state management: Pinia/Vuex patterns
🎨 Master Composition API: Modern Vue development
🚀 Build real-world projects: Apply your knowledge

<br/>
🧪 Testing

✅ Use Vitest for unit testing
✅ Use Vue Test Utils for component testing
✅ Practice TDD (Test-Driven Development)


<br/>
🎯 Final Project Ideas
ProjectDescriptionTechnologies📱 Social Media DashboardPosts, likes, comments, user profilesVue 3, Pinia, Router📊 Project Management ToolTasks, boards, team collaborationComposition API, Pinia🌤️ Weather ApplicationAPI integration, location servicesVue 3, Axios, APIs💬 Chat ApplicationReal-time messaging with WebSocketsVue 3, Socket.io📈 Admin DashboardData visualization, CRUD operations, reportsVue 3, Chart.js, Pinia

<br/>
🎓 Conclusion
Vue.js is a powerful, flexible framework that scales from simple enhancements to complex applications. Focus on understanding core concepts, practice regularly, and build real-world projects to master Vue.js.
⭐ Key Takeaways
✅ Vue is progressive and approachable
✅ Components are the building blocks
✅ Reactivity makes development intuitive
✅ Composition API provides better code organization
✅ Strong ecosystem with Router and Pinia

💡 Pro Tip: Keep practicing, read the documentation, and engage with the Vue community. Happy coding!


<br/>
<div align="center">
👨‍💻 Author
Professor [Senior Faculty]
<br/>
🙏 Credits
Course materials compiled from official Vue.js documentation and academic curriculum.
<br/>
📅 Last Updated
December 2025
<br/>

<br/>
⭐ If you found this helpful, please star this repository!
🤝 Contributions are welcome!
📧 Questions? Open an issue!
<br/>
Made with ❤️ for Vue.js learners
</div>