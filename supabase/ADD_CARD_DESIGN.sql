-- Add card_design column to player_card table for different FIFA card styles
ALTER TABLE player_card ADD COLUMN IF NOT EXISTS card_design text DEFAULT 'gold';

-- Available card designs:
-- 'gold' - Standard gold card (default)
-- 'silver' - Silver card
-- 'bronze' - Bronze card
-- 'inform' - Team of the Week (black)
-- 'motm' - Man of the Match (purple)
-- 'toty' - Team of the Year (blue)
-- 'tots' - Team of the Season (blue/gold)
-- 'hero' - Hero card (dark blue/purple)
-- 'icon' - Icon card (light blue/white)

-- You can customize this later with more designs
