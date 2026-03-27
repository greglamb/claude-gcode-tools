---
name: presentation-design
description: "Design guidance and best practices for creating visually compelling slide presentations, regardless of the tool used (Google Slides, PowerPoint, Keynote, etc.). Use this skill whenever creating, designing, or improving presentation decks — especially when paired with a tool-specific skill like gws-slides or pptx. Covers color palettes, typography, layout patterns, spacing, data visualization, and common design mistakes. Trigger when the user mentions presentations, slide decks, pitch decks, designing slides, or improving the look and feel of any presentation — even if they don't explicitly ask for 'design help.'"
---

# Presentation Design Skill

Design guidance for creating professional, visually compelling slide presentations. This skill is **tool-agnostic** — it works alongside any presentation tool (Google Slides API, PptxGenJS, Keynote, etc.) by providing the design thinking and visual standards that the tool-specific skill won't have.

## Workflow Overview

This skill drives a three-phase process. Don't skip to building slides.

1. **Plan** — Audience, narrative arc, slide-by-slide outline, design choices (palette, fonts, motif)
2. **Build** — Create slides using the companion tool skill, applying the design standards below
3. **Review & Iterate** — Structured feedback cycles until the deck is right

For tool-specific implementation (API calls, code, formatting syntax), defer to the companion tool skill (e.g., `gws-slides`, `pptx`).

---

## Phase 1: Deck Planning

Before touching any tool, answer these questions with the user:

### Audience & Purpose

1. **Who is the audience?** (executives, peers, clients, mixed?) — this drives depth, jargon level, and formality
2. **What should they feel/do after?** — the deck exists to change behavior or understanding; name the specific outcome
3. **How will it be delivered?** — live presentation (less text, more visuals), async/emailed (more self-contained), or both?
4. **How long?** — constrain slide count early; most decks are too long

### Narrative Arc

Every good deck tells a story. Choose a structure that fits your purpose. For detailed guidance on each structure, opening hooks, tension-building, closings, and slide-level storytelling, read **[references/storytelling.md](references/storytelling.md)**.

Quick reference — common structures:

- **Situation → Complication → Resolution**: Best for proposals and recommendations. Establish shared reality, introduce the problem, present the path forward.
- **Minto Pyramid (Answer First)**: Best for executive audiences. Lead with your recommendation, then support it. Read the reference for why this is critical for consulting decks.
- **What → So What → Now What**: Best for data-driven presentations. Show the facts, explain why they matter, propose action.
- **Problem → Approach → Evidence → Ask**: Best for pitch decks and funding requests.
- **Before → After → Bridge**: Best for sales presentations and transformation stories.
- **Context → Options → Recommendation**: Best for decision decks.

### Slide-by-Slide Outline

Before building, draft a one-line-per-slide outline. For each slide, capture:
- **Slide title** (working title is fine)
- **Key message** — the one thing the audience should take away from this slide
- **Layout type** — two-column, stat callout, timeline, etc. (see Layout Options below)
- **Visual element** — what image, chart, icon, or shape supports the message

Present the outline to the user for review. Iterate on structure before building anything. Moving slides around in an outline is free; moving them after they're built is expensive.

### Design Choices

Make these decisions once, apply everywhere:
- **Color palette** — see Color Palettes below
- **Font pairing** — see Typography below
- **Visual motif** — the one repeating design element (see below)
- **Background strategy** — dark/light sandwich or consistent throughout

---

## Phase 2: Design Standards

### Before Starting

### Pick a Bold, Content-Informed Color Palette

The palette should feel designed for THIS topic. If swapping your colors into a completely different presentation would still "work," you haven't made specific enough choices. Don't default to generic blue.

### Dominance Over Equality

One color should dominate (60–70% visual weight), with 1–2 supporting tones and one sharp accent. Never give all colors equal weight.

### Dark/Light Contrast Structure

Dark backgrounds for title + conclusion slides, light for content ("sandwich" structure). Or commit to dark throughout for a premium feel.

### Commit to a Visual Motif

Pick ONE distinctive element and repeat it — rounded image frames, icons in colored circles, thick single-side borders. Carry it across every slide for cohesion.

---

## Color Palettes

Choose colors that match your topic. Use these palettes as inspiration:

| Theme | Primary | Secondary | Accent |
|-------|---------|-----------|--------|
| **Midnight Executive** | `1E2761` (navy) | `CADCFC` (ice blue) | `FFFFFF` (white) |
| **Forest & Moss** | `2C5F2D` (forest) | `97BC62` (moss) | `F5F5F5` (cream) |
| **Coral Energy** | `F96167` (coral) | `F9E795` (gold) | `2F3C7E` (navy) |
| **Warm Terracotta** | `B85042` (terracotta) | `E7E8D1` (sand) | `A7BEAE` (sage) |
| **Ocean Gradient** | `065A82` (deep blue) | `1C7293` (teal) | `21295C` (midnight) |
| **Charcoal Minimal** | `36454F` (charcoal) | `F2F2F2` (off-white) | `212121` (black) |
| **Teal Trust** | `028090` (teal) | `00A896` (seafoam) | `02C39A` (mint) |
| **Berry & Cream** | `6D2E46` (berry) | `A26769` (dusty rose) | `ECE2D0` (cream) |
| **Sage Calm** | `84B59F` (sage) | `69A297` (eucalyptus) | `50808E` (slate) |
| **Cherry Bold** | `990011` (cherry) | `FCF6F5` (off-white) | `2F3C7E` (navy) |

---

## Typography

### Font Pairings

Choose an interesting pairing — don't default to Arial for everything. Pick a header font with personality and pair it with a clean body font.

| Header Font | Body Font |
|-------------|-----------|
| Georgia | Calibri |
| Arial Black | Arial |
| Calibri | Calibri Light |
| Cambria | Calibri |
| Trebuchet MS | Calibri |
| Impact | Arial |
| Palatino | Garamond |
| Consolas | Calibri |

When working with Google Slides, these are safe cross-platform choices. Google Fonts (Montserrat, Open Sans, Lato, Roboto, etc.) are also excellent and natively available in Google Workspace.

### Size Hierarchy

| Element | Size |
|---------|------|
| Slide title | 36–44pt bold |
| Section header | 20–24pt bold |
| Body text | 14–16pt |
| Captions | 10–12pt muted |

Titles need 36pt+ to stand out from 14–16pt body text. Don't skimp on this contrast.

---

## Slide Layouts

Every slide needs a visual element — image, chart, icon, or shape. Text-only slides are forgettable.

### Layout Options

- **Two-column**: text left, illustration/image right
- **Icon + text rows**: icon in colored circle, bold header, description below
- **Grid layout** (2×2 or 2×3): image on one side, grid of content blocks on the other
- **Half-bleed image**: full left or right side with content overlay on the opposite side

### Data Display

- **Large stat callouts**: big numbers (60–72pt) with small labels below — great for impact
- **Comparison columns**: before/after, pros/cons, side-by-side options
- **Timeline or process flow**: numbered steps with arrows or connecting lines

### Visual Polish

- Icons in small colored circles next to section headers
- Italic accent text for key stats or taglines
- Consistent use of your accent color for emphasis elements

---

## Spacing

- **0.5" minimum margins** from slide edges
- **0.3–0.5" between content blocks** — pick one gap size and use it consistently
- **Leave breathing room** — don't fill every inch of the slide
- When elements feel cramped, the fix is usually removing content, not shrinking gaps

---

## Charts and Data Visualization

Default chart styles in most tools look dated. Apply these principles for modern, clean charts:

- **Match chart colors to your presentation palette** — don't use tool defaults
- **Mute axis labels** — use a lighter gray rather than black
- **Subtle gridlines** — thin, light-colored, on value axis only; hide category axis gridlines
- **Data labels on bars/points** — position outside the end for clarity
- **Hide the legend for single-series charts** — it's redundant
- **Clean background** — white or very light fill, no heavy borders
- **Curved lines** for line charts look more polished than angular ones

---

## Visual QA Checklist

Assume there are problems. Your job is to find them. If you found zero issues on first inspection, you weren't looking hard enough.

### Verifying Your Work

How you inspect depends on your tool:
- **Google Slides API (gws)**: Read back the presentation state with `gws slides presentations get` to verify elements were placed correctly. For visual verification, export as PDF via Drive API or have the user open the Slides URL and confirm.
- **Local file (.pptx)**: Convert to PDF/images and visually inspect each slide.
- **Any tool**: After building, always do at least one full visual pass — API responses confirming "success" don't mean it looks right.

### Check For

- **Overlapping elements**: text through shapes, lines through words, stacked elements
- **Text overflow**: content cut off at edges or box boundaries
- **Elements too close**: gaps less than 0.3" between content blocks or cards nearly touching
- **Uneven gaps**: large empty area in one place, cramped in another
- **Insufficient margins**: content closer than 0.5" from slide edges
- **Misaligned columns**: similar elements not aligned consistently
- **Low-contrast text**: light gray text on cream backgrounds, dark text on dark backgrounds
- **Low-contrast icons**: dark icons on dark backgrounds without a contrasting circle
- **Text boxes too narrow**: excessive wrapping that breaks readability
- **Leftover placeholder content**: template text that wasn't replaced

### Verification Loop

1. Generate slides → visually inspect each one
2. List issues found (if none found, look again more critically)
3. Fix issues
4. Re-verify affected slides — one fix often creates another problem
5. Repeat until a full pass reveals no new issues

Do not declare success until you've completed at least one fix-and-verify cycle.

---

## Common Mistakes to Avoid

- **Don't repeat the same layout** — vary columns, cards, and callouts across slides
- **Don't center body text** — left-align paragraphs and lists; center only titles
- **Don't skimp on size contrast** — titles need 36pt+ to stand out from 14–16pt body
- **Don't default to blue** — pick colors that reflect the specific topic
- **Don't mix spacing randomly** — choose 0.3" or 0.5" gaps and use consistently
- **Don't style one slide and leave the rest plain** — commit fully or keep it simple throughout
- **Don't create text-only slides** — add images, icons, charts, or visual elements
- **Don't use low-contrast elements** — both icons AND text need strong contrast against backgrounds
- **NEVER use accent lines under titles** — these are a hallmark of AI-generated slides; use whitespace or background color instead
- **Don't cram too many points on one slide** — if you have more than 3–4 key points, split across slides

---

## Phase 3: Review & Iteration

### How to Review

After the initial build, the user needs to see the deck and provide feedback. The review process depends on the tool:

- **Google Slides**: Open the presentation URL directly in browser. Every slide is immediately visible and shareable.
- **PowerPoint (.pptx)**: Export to PDF or open in PowerPoint/Google Slides (via import) for visual review.
- **API-based workflows**: If you can't render locally, export the presentation as PDF via the Drive API (`gws drive files export`) and inspect the output.

### Giving Feedback

Structured feedback moves faster than freeform. Encourage the user to follow this format:

```
Slide [number]: [issue type] — [specific description]
```

Issue types:
- **Content**: wrong text, missing info, reword this
- **Layout**: move X, resize Y, change alignment
- **Design**: color change, font issue, spacing problem
- **Remove**: delete this element/slide
- **Add**: new element or slide needed

**Example feedback:**
```
Slide 2: Content — change "Q3 results" to "Q3 2025 results"
Slide 4: Layout — stat callout numbers are too small, bump to 60pt
Slide 5: Design — background too dark, body text is hard to read
Slide 7: Remove — this slide duplicates slide 3
Add: need a slide between 5 and 6 showing the timeline
```

### Iteration Cycle

1. **User reviews the full deck** and provides feedback (batch all changes, don't drip-feed)
2. **Apply all changes** in one pass
3. **Run the Visual QA Checklist** on affected slides
4. **Present updated deck** back to user
5. **Repeat** until the user is satisfied

Expect 2–3 full review cycles for a typical deck. The first cycle catches content and structural issues. The second catches design polish. The third (if needed) is final tweaks.

### When to Push Back

The user may request changes that hurt the deck. Respectfully flag these:
- Adding too much text to a single slide (offer to split)
- Requesting a layout that creates low contrast or readability issues
- Inconsistencies with the established motif or palette
- Removing all visual elements from a slide (text-only trap)

Explain the trade-off, suggest an alternative, but defer to the user if they insist.

### Completion Checklist

Before declaring the deck done:
- [ ] Every slide has a clear key message
- [ ] Visual motif is consistent across all slides
- [ ] Color palette is applied consistently (no rogue colors)
- [ ] Font hierarchy is consistent (title/header/body/caption sizes)
- [ ] Spacing is uniform (margins, gaps between elements)
- [ ] No leftover placeholder text
- [ ] Slide count matches the delivery context (not too long for the audience)
- [ ] The narrative arc reads coherently from first slide to last
