---
name: Noir E-Commerce
colors:
  surface: '#131313'
  surface-dim: '#131313'
  surface-bright: '#393939'
  surface-container-lowest: '#0e0e0e'
  surface-container-low: '#1c1b1b'
  surface-container: '#20201f'
  surface-container-high: '#2a2a2a'
  surface-container-highest: '#353535'
  on-surface: '#e5e2e1'
  on-surface-variant: '#cfc4c5'
  inverse-surface: '#e5e2e1'
  inverse-on-surface: '#313030'
  outline: '#988e90'
  outline-variant: '#4c4546'
  surface-tint: '#c6c6c6'
  primary: '#c6c6c6'
  on-primary: '#303030'
  primary-container: '#000000'
  on-primary-container: '#757575'
  inverse-primary: '#5e5e5e'
  secondary: '#ffb3ad'
  on-secondary: '#680009'
  secondary-container: '#d2031e'
  on-secondary-container: '#ffe1de'
  tertiary: '#c6c6c7'
  on-tertiary: '#2f3131'
  tertiary-container: '#000000'
  on-tertiary-container: '#747576'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#e2e2e2'
  primary-fixed-dim: '#c6c6c6'
  on-primary-fixed: '#1b1b1b'
  on-primary-fixed-variant: '#474747'
  secondary-fixed: '#ffdad6'
  secondary-fixed-dim: '#ffb3ad'
  on-secondary-fixed: '#410003'
  on-secondary-fixed-variant: '#930011'
  tertiary-fixed: '#e2e2e2'
  tertiary-fixed-dim: '#c6c6c7'
  on-tertiary-fixed: '#1a1c1c'
  on-tertiary-fixed-variant: '#454747'
  background: '#131313'
  on-background: '#e5e2e1'
  surface-variant: '#353535'
typography:
  display-2xl:
    fontFamily: Syne
    fontSize: 120px
    fontWeight: '800'
    lineHeight: 110px
    letterSpacing: -0.04em
  display-lg:
    fontFamily: Syne
    fontSize: 72px
    fontWeight: '800'
    lineHeight: 72px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Syne
    fontSize: 48px
    fontWeight: '700'
    lineHeight: 52px
  headline-lg-mobile:
    fontFamily: Syne
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 36px
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  label-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 20px
    letterSpacing: 0.05em
  label-sm:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
spacing:
  grid-margin: 48px
  grid-gutter: 24px
  section-gap: 120px
  stack-sm: 8px
  stack-md: 16px
  stack-lg: 32px
---

## Brand & Style
The brand personality is authoritative, premium, and unapologetically creative. This design system targets high-end fashion, luxury goods, and avant-garde retail where the interface acts as a silent, sophisticated gallery for products. 

The design style is **High-Contrast Editorial**. It leverages a "Void-First" philosophy, using deep black backgrounds to allow product photography and crimson accents to pop with intense energy. The aesthetic draws from modern fashion magazines—balancing massive, expressive typography with disciplined, utilitarian layouts. The emotional response should be one of exclusivity and confidence, moving away from "friendly" UI toward a more "stark and architectural" digital experience.

## Colors
The palette is rooted in a strict "Noir" foundation. 
- **Primary Background:** Deep Black (#000000) is used for all main surfaces to create an infinite depth effect.
- **Accents:** Intense Crimson (#E61E2A) is reserved strictly for high-priority actions, interactive states, and critical highlights. It represents energy and urgency against the dark void.
- **Typography:** Soft White (#F2F2F2) provides high legibility without the harshness of pure white, ensuring a premium feel.
- **Structure:** Dark Charcoal (#1A1A1A) is used for subtle borders and secondary containers to maintain a sense of form without breaking the monochromatic flow.

## Typography
Typography is the primary driver of visual hierarchy in this design system. 
- **Display & Headlines:** Using **Syne** in extra-bold weights creates a distinctive, avant-garde character. Large-scale type should use negative letter-spacing to feel compact and impactful.
- **Body & Interface:** **Inter** provides a utilitarian contrast to the expressive headlines. It ensures that product descriptions and functional data remain clear and accessible.
- **Labels:** Small labels use uppercase styling with increased letter spacing to mimic high-end editorial captions and technical specs.

## Layout & Spacing
The layout follows a **Fluid 12-Column Grid** on desktop, transitioning to a **4-Column Grid** on mobile. 

A hallmark of this design system is the use of "Extreme Whitespace" (or blackspace). Sections should be separated by large vertical gaps (120px+) to allow the eye to rest and focus on individual product stories. 
- **Margins:** Large 48px outer margins on desktop create a "framed" gallery look.
- **Gutters:** Tight 24px gutters keep related elements feeling connected.
- **Alignment:** Use asymmetrical placements for images and text to reinforce the editorial, non-standard feel.

## Elevation & Depth
This design system rejects traditional shadows in favor of **Tonal Layering and Borders**.
- **Flat Surfaces:** Depth is not conveyed through Z-index shadows but through color value shifts. Secondary containers use #1A1A1A.
- **Thin Outlines:** Structural elements are defined by 1px solid borders in #1A1A1A. This creates a blueprint-like precision.
- **Zero Blur:** Avoid all ambient shadows or blurs. The hierarchy must be achieved through contrast, size, and crimson color-blocking rather than simulated lighting.

## Shapes
The shape language is **Sharp (0px)**. 
Every element—from buttons to input fields to product cards—must use 90-degree corners. This reinforces the architectural, brutalist-editorial aesthetic. Sharp corners convey precision, luxury, and a "no-nonsense" professional attitude. Circular elements are strictly forbidden unless used for icons or specific functional indicators like color swatches.

## Components
- **Buttons:** Primary buttons are solid Crimson (#E61E2A) with Black text, sharp-edged. Secondary buttons are outlined in Soft White (#F2F2F2) with no fill.
- **Input Fields:** Minimalist design; a bottom border only (#1A1A1A) that turns Crimson (#E61E2A) on focus. Labels sit above in uppercase `label-sm`.
- **Cards:** Product cards have no background or shadow. They consist of a full-bleed image followed by `label-md` for the brand and `body-md` for the price.
- **Lists:** Separated by 1px Crimson lines to create a dramatic horizontal rhythm.
- **Chips/Tags:** Small, sharp rectangles with #1A1A1A background and White text, used for categories or stock status.
- **Editorial Sliders:** Large-scale navigation arrows in Crimson, placed at the edges of the screen to maximize the focus on the central content.