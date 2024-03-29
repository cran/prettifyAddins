% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prettify_chromote.R
\name{reindent_chromote}
\alias{reindent_chromote}
\title{Reindent code using chromote}
\usage{
reindent_chromote(contents = NA, language = NA, tabSize = NULL)
}
\arguments{
\item{contents}{the code to be reindented; there are three possibilities for
this argument:
\code{NA} (default), to use the file currently opened in RStudio;
the path to a file;
or the code given as a character vector}

\item{language}{the language of the code, such as \code{"python"};
see \code{\link{getPrettifiableLanguages}};
if the contents are read from a file and \code{language=NA}, then the
language is guessed from the file extension}

\item{tabSize}{number of spaces of the indentation (usually \code{2} or
\code{4});
if \code{NULL} (the default), there are two possibilities:
if the contents are read from the current file in RStudio, then the
number of spaces will be the one you use in RStudio;
otherwise it is set to \code{2}}
}
\value{
The reindented code in a character string.
}
\description{
Reindent some code using chromote.
}
\note{
This function uses \code{chromote::find_chrome()} to find the
  executable of Google Chrome or another Chromium-based browser. If it is
  not found you will get an error. In this case set the environment variable
  \code{CHROMOTE_CHROME} to the path of such an executable
  (e.g. \code{Sys.setenv(CHROMOTE_CHROME = "path/to/chrome.exe")}).
}
\examples{
library(prettifyAddins)

code <- c(
  'if test == 1:',
  'print "it is one"',
  'else:',
  'print "it is not one"'
)

if(Sys.which("chrome") != "") {
  cat(reindent_chromote(code, "python"))
}
}
