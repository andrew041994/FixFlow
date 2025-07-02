# 🚀 Fixflow Starter Project

A modern full-stack setup using:

- **Rails 8** (backend)
- **Vue 3** + **Vuetify** (frontend, via Inertia.js)
- **Tailwind CSS** (styling)
- **PostgreSQL** (database)
- **Vite** (frontend bundler via vite_rails)
- **Heroku**-ready

---

## 🛠 Getting Started

### Prerequisites

- Ruby 3.2+
- Node.js 16+
- Yarn
- PostgreSQL

### Setup

```bash
git clone <repo-url>
cd fixflow
bundle install
yarn install
rails db:create db:migrate
bin/dev
