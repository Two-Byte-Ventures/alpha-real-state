# Alpha Real Estate - Theme Guidelines

## Black Theme Policy

This project follows a **black theme policy** for consistent visual design across all components.

### Button Styling Rules

#### Primary Buttons
All primary buttons should use black styling:

```jsx
// ✅ Preferred approach - using custom classes
<Button className="bg-black text-white hover:bg-gray-800">
  Button Text
</Button>

// ✅ Alternative - using color="primary" (now configured to be black)
<Button color="primary">
  Button Text
</Button>
```

#### Button Color Hierarchy
- **Primary actions**: Black (`bg-black`)
- **Secondary actions**: Gray (`bg-gray-500`)
- **Danger actions**: Red (`color="danger"`)
- **Cancel/Light actions**: Light variant (`variant="light"`)

### Global Theme Configuration

The project uses NextUI with a custom theme configuration in `tailwind.config.js`:

```javascript
plugins: [ 
  nextui({
    themes: {
      light: {
        colors: {
          primary: {
            DEFAULT: "#000000", // Black as primary color
            foreground: "#ffffff", // White text on black
          },
        },
      },
    },
  })
]
```

### CSS Classes Available

The following utility classes are available in `styles/globals.css`:

- `.btn-primary`: Standard primary button styling
- Global overrides for NextUI primary components

### Examples

#### Form Buttons
```jsx
// Save/Submit buttons
<Button className="bg-black text-white hover:bg-gray-800">
  Save
</Button>

// Cancel buttons
<Button color="danger" variant="light">
  Cancel
</Button>
```

#### Icon Buttons
```jsx
<Button
  isIconOnly
  className="bg-black text-white hover:bg-gray-800 rounded-full"
>
  <Icon />
</Button>
```

### Migration Notes

When updating existing components:
1. Replace `color="primary"` with explicit black classes if needed
2. Ensure hover states use `hover:bg-gray-800`
3. Use `text-white` for contrast on black backgrounds
4. Test in both light and dark modes

### Enforcement

This theme policy is enforced through:
- Tailwind configuration with black primary colors
- Global CSS overrides for NextUI components
- Documentation and code review guidelines
