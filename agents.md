# 🤖 Agents Guide for Codex

Welcome, Codex. This document tells you everything you need to know to collaborate on **Fixflow** — a full-stack Rails + Vue project using Inertia.js. Follow the structure and conventions here when generating code or expanding features.

---

## 🧠 Project Summary

Fixflow is a modern support platform built with:

- **Backend:** Rails 8 (with Inertia.js)
- **Frontend:** Vue 3 (via Vite + Inertia)
- **UI:** Vuetify 3
- **Styling:** Tailwind CSS
- **Database:** PostgreSQL
- **Deployment:** Heroku

---

## 📦 Conventions You Must Follow

### ✅ Pages

- Pages are Inertia components stored in:  
  `app/frontend/pages/`
- Corresponding Rails controller actions should render via:  
  `render inertia: "PageName"`

### ✅ Components

- Reusable Vue components go in:  
  `app/frontend/components/`

### ✅ Layouts

- Layout components live in:  
  `app/frontend/layouts/`  
- Pages must wrap in a layout using `layout: LayoutName` or `resolveComponent` globally.

### ✅ Styling

- Tailwind is available globally.  
- Vuetify components should be wrapped inside `<v-app>`.
- Avoid adding global CSS unless scoped via Tailwind or Vuetify themes.

### ✅ Routes & Controllers

- Routes live in `config/routes.rb`
- Pages should be defined via `PagesController` unless a better separation is required.
- Every new route must render an Inertia page and be RESTful if resourceful.

---

## 🔧 What You Can Do

Codex is allowed to:

- Scaffold new Inertia pages with proper Rails routes and controller actions.
- Generate Vue components and inject them into pages or layouts.
- Extend existing pages with Vuetify components or Tailwind styling.
- Add helper methods, partials, or share props using `inertia_share`.
- Modify the README if you add features that require updated usage instructions.

---

## 🚫 What You Should NOT Do

Codex must NOT:

- Use non-Inertia rendering methods (e.g., `render :erb`)
- Mix Vue 2 syntax or jQuery
- Bypass the Rails controller layer for page rendering
- Add UI without matching backend logic (unless instructed)

---