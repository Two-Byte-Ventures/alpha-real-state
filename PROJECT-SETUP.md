# How to set up with Next.js from scratch

## Create Next.js project from scratch

`npx create-next-app@latest alpha-real-state`

Then choose the options desired for the project. This project was configured as follows:

```bash
~$ npx create-next-app@latest alpha-real-state
Need to install the following packages:
create-next-app@15.0.4
Ok to proceed? (y)

✔ Would you like to use TypeScript? … [No] / Yes
✔ Would you like to use ESLint? … No / [Yes]
✔ Would you like to use Tailwind CSS? … No / [Yes]
✔ Would you like your code inside a `src/` directory? … [No] / Yes
✔ Would you like to use App Router? (recommended) … No / [Yes]
✔ Would you like to use Turbopack for next dev? … [No] / Yes
✔ Would you like to customize the import alias (@/* by default)? … [No] / Yes
Creating a new Next.js app in /home/aortegag/alpha-real-state.

Using npm.

Initializing project with template: app-tw


Installing dependencies:
- react
- react-dom
- next

Installing devDependencies:
- postcss
- tailwindcss
- eslint
- eslint-config-next

# a lot of output was removed

added 368 packages, and audited 369 packages in 25s

138 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities
Initialized a git repository.

Success! Created alpha-real-state at ~/alpha-real-state
```

## Project dependencies

The following packages are part of our project. Any time a new project dependcy is added through `npm install` add it here. This is for future reference for different projects.
