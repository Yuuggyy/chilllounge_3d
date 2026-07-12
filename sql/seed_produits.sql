-- ── SEED PRODUITS : Chill Lounge ──────────────────────────────
INSERT INTO public.restaurants (nom, slug)
VALUES ('Chill Lounge', 'chilllounge')
ON CONFLICT (slug) DO NOTHING;

DO $$
DECLARE rid UUID;
BEGIN
  SELECT id INTO rid FROM public.restaurants WHERE slug = 'chilllounge';
  INSERT INTO public.produits (restaurant_id, nom, description, prix, categorie, disponible) VALUES
    (rid, 'Chill Cocktail Special', 'Recette signature Chill Lounge', 7.00, 'Cocktails et Bar', true),
    (rid, 'Mojito', 'Rhum, menthe fraiche, citron vert, soda', 7.00, 'Cocktails et Bar', true),
    (rid, 'Sex on the Beach', 'Vodka, jus de peche, jus d orange, grenadine', 8.00, 'Cocktails et Bar', true),
    (rid, 'Pina Colada', 'Rhum, lait de coco, jus d ananas', 8.00, 'Cocktails et Bar', true),
    (rid, 'Biere Primus 65cl', NULL, 4.00, 'Cocktails et Bar', true),
    (rid, 'Vin Rouge (verre)', NULL, 7.00, 'Cocktails et Bar', true),
    (rid, 'Whisky Maison', 'Blend selectionne, avec ou sans glace', 9.00, 'Cocktails et Bar', true),
    (rid, 'Salade d Avocat', 'Avocat, tomates, oignons, vinaigrette citron', 7.00, 'Entrees et Snacks', true),
    (rid, 'Ailes de Poulet x6', 'Epicees, sauce dip', 8.00, 'Entrees et Snacks', true),
    (rid, 'Samoussa x4', 'Farce viande epicee', 5.00, 'Entrees et Snacks', true),
    (rid, 'Frittes Maison', NULL, 3.00, 'Entrees et Snacks', true),
    (rid, 'Poulet Braise et Riz', 'Demi-poulet braise, riz jaune, salade', 13.00, 'Plats', true),
    (rid, 'Tilapia Frit', 'Tilapia entier frit, piment, citron', 12.00, 'Plats', true),
    (rid, 'Pates Bolognaise', 'Spaghetti, sauce viande hachee maison', 10.00, 'Plats', true),
    (rid, 'Poulet Roti aux herbes', NULL, 14.00, 'Plats', true),
    (rid, 'Riz au Gras', 'Riz cuisines, legumes, epices', 9.00, 'Plats', true),
    (rid, 'Brownie Chocolat', 'Fondant aux noix, glace vanille', 6.00, 'Desserts', true),
    (rid, 'Glace 2 boules', 'Vanille, chocolat ou fraise', 4.00, 'Desserts', true),
    (rid, 'Tiramisu Maison', NULL, 7.00, 'Desserts', true),
    (rid, 'Jus de Fruit Frais', 'Mangue, passion, ananas, bissap', 3.50, 'Softs et Boissons', true),
    (rid, 'Coca Cola 33cl', NULL, 2.50, 'Softs et Boissons', true),
    (rid, 'Eau Minerale 75cl', NULL, 2.00, 'Softs et Boissons', true)
  ON CONFLICT DO NOTHING;
END $$;
