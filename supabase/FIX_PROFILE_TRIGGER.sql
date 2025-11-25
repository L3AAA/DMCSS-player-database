-- ============================================
-- FIX PROFILE AUTO-CREATION TRIGGER
-- This removes any trigger that auto-creates profiles with email
-- and allows our signup code to properly set full_name
-- ============================================

-- Drop any existing handle_new_user trigger
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
DROP FUNCTION IF EXISTS public.handle_new_user();

-- Note: After running this, profiles will ONLY be created 
-- by the signup.js code, which correctly sets full_name
-- from the form input, not from the email

-- ============================================
-- OPTIONAL: Fix existing profiles that have email usernames
-- Run this if you want to clean up existing test accounts
-- ============================================
-- UPDATE profiles 
-- SET full_name = NULL 
-- WHERE full_name LIKE '%@%' OR full_name NOT LIKE '% %';
-- 
-- This sets full_name to NULL for any profile that:
-- - Contains an @ symbol (is an email)
-- - Doesn't contain a space (is a username, not a full name)
