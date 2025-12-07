# Vue.js Learning Repository

A comprehensive guide to learning Vue.js from beginner to advanced level. This repository contains examples, exercises, and projects to help you master Vue.js.

## 📚 Table of Contents

- [About Vue.js](#about-vuejs)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Learning Path](#learning-path)
- [Project Structure](#project-structure)
- [Resources](#resources)
- [Contributing](#contributing)

## About Vue.js

Vue.js is a progressive JavaScript framework for building user interfaces. It's designed to be incrementally adoptable, with a core library that focuses on the view layer and an ecosystem of supporting libraries for complex applications.

**Key Features:**
- Reactive and composable view components
- Approachable and versatile
- Performant and lightweight
- Rich ecosystem with official routing and state management

## Prerequisites

Before starting, you should have basic knowledge of:
- HTML, CSS, and JavaScript (ES6+)
- DOM manipulation concepts
- Command line basics
- Node.js and npm/yarn

## Getting Started

### Installation

1. Clone this repository:
```bash
git clone https://github.com/yourusername/vue-learning-repo.git
cd vue-learning-repo
```

2. Install dependencies:
```bash
npm install
```

3. Run the development server:
```bash
npm run dev
```

### Quick Start with Vue

Create a new Vue project using Vite:
```bash
npm create vue@latest
```

Or using Vue CLI:
```bash
npm install -g @vue/cli
vue create my-project
```

## Learning Path

### 1. Fundamentals (Week 1-2)

**Topics Covered:**
- Vue instance and lifecycle
- Template syntax and directives (v-bind, v-if, v-for, v-on)
- Data binding and reactivity
- Methods, computed properties, and watchers
- Class and style bindings
- Conditional and list rendering
- Event handling

**Practice Projects:**
- Todo List App
- Simple Calculator
- Dynamic Form Validator

### 2. Components (Week 3-4)

**Topics Covered:**
- Component basics and registration
- Props and custom events
- Slots and scoped slots
- Component lifecycle hooks
- Dynamic and async components
- Provide/Inject pattern

**Practice Projects:**
- Reusable UI Component Library
- Blog Post Feed
- Product Card Grid

### 3. Vue Router (Week 5)

**Topics Covered:**
- Setting up Vue Router
- Dynamic route matching
- Nested routes
- Navigation guards
- Route meta fields
- Lazy loading routes

**Practice Projects:**
- Multi-page Portfolio Site
- E-commerce Product Browser

### 4. State Management with Pinia (Week 6)

**Topics Covered:**
- Introduction to Pinia
- Defining stores
- State, getters, and actions
- Store composition
- Plugins and subscriptions

**Practice Projects:**
- Shopping Cart Application
- User Authentication System

### 5. Composition API (Week 7-8)

**Topics Covered:**
- setup() function
- Reactive references (ref, reactive)
- Computed values and watchers
- Lifecycle hooks in Composition API
- Composables (custom hooks)
- Script setup syntax

**Practice Projects:**
- Refactor previous projects using Composition API
- Custom composables library

### 6. Advanced Concepts (Week 9-10)

**Topics Covered:**
- Teleport and Suspense
- Custom directives
- Mixins and composition
- Render functions and JSX
- TypeScript with Vue
- Testing with Vitest
- Performance optimization

**Practice Projects:**
- Modal/Dialog System
- Drag-and-Drop Interface
- Real-time Dashboard

### 7. Real-World Application (Week 11-12)

**Capstone Project:**
Build a full-featured application incorporating:
- Multiple routes and nested views
- Global state management
- API integration
- Authentication and authorization
- Form validation
- Error handling
- Responsive design

**Suggested Projects:**
- Social Media Dashboard
- Project Management Tool
- Recipe Finder App
- Weather Application with Forecast

## Project Structure

```
vue-learning-repo/
├── 01-fundamentals/
│   ├── data-binding/
│   ├── directives/
│   └── computed-properties/
├── 02-components/
│   ├── props-events/
│   ├── slots/
│   └── lifecycle/
├── 03-vue-router/
│   ├── basic-routing/
│   └── advanced-routing/
├── 04-state-management/
│   ├── pinia-basics/
│   └── complex-state/
├── 05-composition-api/
│   ├── setup-basics/
│   └── composables/
├── 06-advanced/
│   ├── custom-directives/
│   ├── typescript/
│   └── testing/
└── 07-projects/
    ├── todo-app/
    ├── ecommerce/
    └── social-dashboard/
```

## Resources

### Official Documentation
- [Vue.js Official Docs](https://vuejs.org/)
- [Vue Router](https://router.vuejs.org/)
- [Pinia](https://pinia.vuejs.org/)
- [Vite](https://vitejs.dev/)

### Tutorials and Courses
- Vue Mastery
- Vue School
- FreeCodeCamp Vue.js Course
- Net Ninja Vue.js Tutorial

### Community
- [Vue.js Discord](https://discord.com/invite/vue)
- [Vue Forum](https://forum.vuejs.org/)
- [Stack Overflow - Vue.js](https://stackoverflow.com/questions/tagged/vue.js)

### Useful Tools
- [Vue DevTools](https://devtools.vuejs.org/)
- [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) - VS Code extension
- [VueUse](https://vueuse.org/) - Collection of composables
- [Nuxt.js](https://nuxt.com/) - Vue.js framework for production

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Vue.js core team for the amazing framework
- The Vue.js community for continuous support and resources
- All contributors to this learning repository

---

Happy Learning! 🚀 If you find this repository helpful, please consider giving it a ⭐!