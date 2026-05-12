import { glob } from 'astro/loaders';
import { defineCollection, z } from 'astro:content';

const blog = defineCollection({
    // Load Markdown and MDX files in the `src/content/blog/` directory.
    loader: glob({ base: './src/content/blog', pattern: '**/*.{md,mdx}' }),
    // Type-check frontmatter using a schema
    schema: z.object({
        icon: z.string(),
        title: z.string(),
        description: z.string(),
        // Transform string to Date object
        pubDate: z.coerce.date(),
        updatedDate: z.coerce.date().optional(),
        heroImage: z.string().optional(),
        tags: z.array(z.string()).optional(),
    }),
});

const products = defineCollection({
    loader: glob({ base: './src/content/products', pattern: '**/*.{md,mdx}' }),
    schema: z.object({
        title: z.string(),
        description: z.string(),
        category: z.string(),
        pubDate: z.coerce.date(),
        heroImage: z.string().optional(),
        gallery: z.array(z.string()).optional(),
        features: z.array(z.object({
            icon: z.string(),
            title: z.string(),
            description: z.string(),
        })).optional(),
        specs: z.array(z.object({
            label: z.string(),
            value: z.string(),
        })).optional(),
        link: z.string().optional(),
    }),
});

export const collections = { blog, products };