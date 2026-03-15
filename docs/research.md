# Research Behind clear-claude

Every formatting rule in this project is backed by peer-reviewed research or established accessibility guidelines. This document summarizes the evidence.

## Letter Spacing

**Extra-large letter spacing doubled reading accuracy and increased speed by over 20%** in dyslexic children.

Dyslexic readers are disproportionately affected by "visual crowding" — letters too close together become harder to distinguish. Increased spacing directly addresses this.

- Zorzi et al. (2012). "Extra-large letter spacing improves reading in dyslexia." *Proceedings of the National Academy of Sciences*. [PMC3396504](https://pmc.ncbi.nlm.nih.gov/articles/PMC3396504/)

## Fonts

**Specialized dyslexia fonts (OpenDyslexic, Dyslexie) do not improve reading performance.** Controlled studies show their benefits come entirely from increased spacing, not from the letter shapes themselves.

When spacing is held constant, Dyslexie performs identically to Times New Roman.

The BDA recommends standard sans-serif fonts: Arial, Verdana, Tahoma, Century Gothic, Calibri, Open Sans at 12-14pt.

**Lexend** is a newer font designed specifically for reading fluency. It has emerging evidence of improved performance.

- Wery & Diliberto (2017). "The effect of a specialized dyslexia font, OpenDyslexic, on reading rate and accuracy." *Annals of Dyslexia*. [PMC5629233](https://pmc.ncbi.nlm.nih.gov/articles/PMC5629233/)
- Kuster et al. (2018). "Dyslexie font does not benefit reading in children with or without dyslexia." *Annals of Dyslexia*. [PMC5934461](https://pmc.ncbi.nlm.nih.gov/articles/PMC5934461/)
- Duranovic et al. (2020). "The effects of letter spacing and font type on reading performance." *Annals of Dyslexia*. [PMC7188700](https://pmc.ncbi.nlm.nih.gov/articles/PMC7188700/)
- BDA Style Guide (2023). [PDF](https://cdn.bdadyslexia.org.uk/uploads/documents/Advice/style-guide/BDA-Style-Guide-2023.pdf)

## Bold Over Italic

The BDA Style Guide recommends **bold for emphasis, never italic**. Italic text distorts letter shapes, making it harder for dyslexic readers to recognize characters.

## Line Length

**Lines of 60-70 characters improve reading speed by up to 27%** compared to very long or very short lines.

This finding applies broadly, but is especially important for dyslexic readers who lose their place more easily on long lines.

## Color and Contrast

Evidence for colored overlays is **inconclusive**. Systematic reviews find insufficient evidence for universal color recommendations.

Warm backgrounds (cream, peach) show some benefit over cool colors in individual studies. The practical consensus:

- Avoid pure black on pure white (too much glare)
- Maintain at least 4.5:1 contrast ratio (WCAG AA)
- Offer both light and dark options — preference is individual

Barrington Stoke uses cream-tinted paper as a pragmatic middle ground.

- Henderson et al. (2014). "Colored overlays and reading fluency." *Journal of Research in Reading*. [PMC4114255](https://pmc.ncbi.nlm.nih.gov/articles/PMC4114255/)

## Working Memory and Chunking

Dyslexic readers have documented **working memory deficits**. This makes long, dense text blocks harder to process.

Chunking information into bullet points, short paragraphs, and clear headers reduces cognitive load. This is why Barrington Stoke uses generous whitespace and frequent chapter breaks.

- Bacon et al. (2019). "Working memory and reading in children with and without dyslexia." [PMC6808376](https://pmc.ncbi.nlm.nih.gov/articles/PMC6808376/)

## Bionic Reading (Considered and Rejected)

Bionic Reading bolds the first few letters of each word to create "fixation points." The claim is that this helps the brain recognise words faster, increasing reading speed.

**clear-claude does not use bionic reading. The evidence shows it does not work.**

The technique was never tested on dyslexic readers. The original study used only 12 participants with unclear results. A peer-reviewed study with 245 participants found no significant difference in reading speed or comprehension. A larger test of 2,074 readers found participants actually read 2.6 words per minute **slower** with bionic text.

The core premise is flawed. Reading speed is limited by language processing — turning letters into words into meaning — not by visual word recognition. Bionic reading addresses the wrong bottleneck. For dyslexic readers specifically, research suggests that slowing down improves comprehension, which is the opposite of what speed-reading techniques aim for.

- Kopp et al. (2024). "No, Bionic Reading does not work." *Acta Psychologica*. [PubMed 38723450](https://pubmed.ncbi.nlm.nih.gov/38723450/)
- Readwise (2022). "Does Bionic Reading actually work? We tested 2,074 readers." [Blog post](https://blog.readwise.io/bionic-reading-results/)

## The Barrington Stoke Principle

Barrington Stoke publishes dyslexia-friendly editions of books including Animal Farm. The text is **completely unabridged**. Nothing is simplified or removed.

The changes are purely presentational:
- Custom font with distinct letter shapes
- Cream-tinted paper
- Increased spacing throughout
- Spacious layout with frequent breaks
- Thicker paper to prevent show-through

**The key insight: accessibility is about formatting, not dumbing down content.**

This is the core principle behind clear-claude. Technical depth stays the same. Only the presentation changes.

- [Barrington Stoke](https://www.barringtonstoke.co.uk/)
