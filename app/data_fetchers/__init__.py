"""
Data fetchers for university information from various sources
"""
from .college_scorecard import CollegeScorecardFetcher
from .supabase_normalizer import SupabaseUniversityDataNormalizer

__all__ = ['CollegeScorecardFetcher', 'SupabaseUniversityDataNormalizer']
