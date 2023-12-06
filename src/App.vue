<script setup>
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
  <header>
    <img alt="Vue logo" class="logo" src="@/assets/logo.svg" width="125" height="125" />

    <div class="wrapper">
      <nav>
        <RouterLink to="/">Home</RouterLink>
        <RouterLink to="/about">About</RouterLink>
        <RouterLink :to="{name: 'jobs'  }">Jobs</RouterLink>
      </nav>
    </div>
  </header>
  
  <RouterView />
  <div class="buttons">
    
    <button @click="redirect"> redirect</button>
    <button  @click="back"> go back</button>
    <button @click="forward"> go forward</button>
  
    </div>
 
</template>

<script>
export default {
methods:{
  redirect() {
   this.$router.push({name:'home'})    

  },
  back() {
    this.$router.go(-1)

  },
  forward() {
    this.$router.go(1)


  },
}

}
</script>

<style scoped>
header {
  line-height: 1.5;
  max-height: 100vh;
  display: flex; /* changed to flex layout for larger screens */
  place-items: center;
  padding-right: calc(var(--section-gap) / 2); /* added padding for larger screens */
}

.logo {
  display: block;
  margin: 0 auto 2rem; /* adjusted margin for larger screens */
}

@media (min-width: 1024px) {
  .logo {
    margin: 0 2rem 0 0; /* adjusted margin for larger screens */
  }
}

nav {
  width: 100%;
  font-size: 12px;
  text-align: left; /* changed to left alignment for horizontal layout */
  margin-top: 2rem;
  padding: 1rem 0 1rem 2rem; /* adjusted padding for larger screens */
  margin-top: 0; /* adjusted margin-top for larger screens */
}

nav a.router-link-exact-active {
  color: var(--color-text);
  text-decoration: underline; /* changed to underline for active links */
}

nav a.router-link-exact-active:hover {
  background-color: transparent;
}

nav a:hover {
  background-color: var(--color-hover); /* added hover effect */
}

nav a {
  display: inline-block;
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
  border: 0;
}

.buttons {
  margin-top: 1rem; /* Simple spacing below the nav */
  display: flex;
  justify-content: space-between; /* Align buttons horizontally */
}



</style>
