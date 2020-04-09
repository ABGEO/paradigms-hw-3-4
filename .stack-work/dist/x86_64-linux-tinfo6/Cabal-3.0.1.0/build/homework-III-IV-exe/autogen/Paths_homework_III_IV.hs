{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_homework_III_IV (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/abgeo/Programming/MyProjects/Haskell/University/Paradigms/homework-III-IV/.stack-work/install/x86_64-linux-tinfo6/6778521aa872e5acb1d040464bfcaa1aef2fcaec2b48437102678221c4e9d501/8.8.3/bin"
libdir     = "/home/abgeo/Programming/MyProjects/Haskell/University/Paradigms/homework-III-IV/.stack-work/install/x86_64-linux-tinfo6/6778521aa872e5acb1d040464bfcaa1aef2fcaec2b48437102678221c4e9d501/8.8.3/lib/x86_64-linux-ghc-8.8.3/homework-III-IV-0.1.0.0-A6RFMaoCRuhHaFQmSeKMuU-homework-III-IV-exe"
dynlibdir  = "/home/abgeo/Programming/MyProjects/Haskell/University/Paradigms/homework-III-IV/.stack-work/install/x86_64-linux-tinfo6/6778521aa872e5acb1d040464bfcaa1aef2fcaec2b48437102678221c4e9d501/8.8.3/lib/x86_64-linux-ghc-8.8.3"
datadir    = "/home/abgeo/Programming/MyProjects/Haskell/University/Paradigms/homework-III-IV/.stack-work/install/x86_64-linux-tinfo6/6778521aa872e5acb1d040464bfcaa1aef2fcaec2b48437102678221c4e9d501/8.8.3/share/x86_64-linux-ghc-8.8.3/homework-III-IV-0.1.0.0"
libexecdir = "/home/abgeo/Programming/MyProjects/Haskell/University/Paradigms/homework-III-IV/.stack-work/install/x86_64-linux-tinfo6/6778521aa872e5acb1d040464bfcaa1aef2fcaec2b48437102678221c4e9d501/8.8.3/libexec/x86_64-linux-ghc-8.8.3/homework-III-IV-0.1.0.0"
sysconfdir = "/home/abgeo/Programming/MyProjects/Haskell/University/Paradigms/homework-III-IV/.stack-work/install/x86_64-linux-tinfo6/6778521aa872e5acb1d040464bfcaa1aef2fcaec2b48437102678221c4e9d501/8.8.3/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "homework_III_IV_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "homework_III_IV_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "homework_III_IV_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "homework_III_IV_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "homework_III_IV_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "homework_III_IV_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
